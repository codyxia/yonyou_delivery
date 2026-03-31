#!/usr/bin/env python3
"""
用友U8发货单SQL生成器
从Excel文件读取发货单数据，生成对应的SQL脚本
"""

import os
import zipfile
import tempfile
import pandas as pd
from pathlib import Path
from datetime import datetime
from collections import defaultdict
from typing import List, Dict, Tuple, Optional
import shutil


# 必需的表头字段
REQUIRED_HEADERS = [
    '发货单号', '发货日期', '客户编码', '部门编码', '币种', '汇率',
    '表头税率', '仓库编码', '存货编码', '主计量单位编码', '主计量数量',
    '含税单价_原币', '无税单价', '金额_原币_无税', '税额_原币', '价税合计_原币',
    '业务员编码', '发运方式编码', '制单人'
]

# 表头字段映射（中文 -> SQL列名）
HEADER_MAPPING = {
    '单据类型': 'cVouchType',
    '期初标志': 'bFirst',
    '发货单号': 'cDLCode',
    '发货日期': 'dDate',
    '业务类型': 'cBusType',
    '销售类型编号': 'cSTCode',
    '客户编码': 'cCusCode',
    '部门编码': 'cDepCode',
    '币种': 'cexch_name',
    '汇率': 'iExchRate',
    '表头税率': 'iTaxRate',
    '退货标志': 'bReturnFlag',
    '先发货先开票标志': 'bSettleAll',
    '仓库编码': 'cWhCode',
    '存货编码': 'cInvCode',
    '主计量单位编码': 'cUnitCode',
    '主计量数量': 'iQuantity',
    '报价含税': 'bPrice',
    '最低售价': 'iLowPrice',
    '赠品': 'bGifts',
    '报价': 'iQuotePrice',
    '含税单价_原币': 'iTaxUnitPrice',
    '无税单价': 'iUnitPrice',
    '金额_原币_无税': 'iMoney',
    '税额_原币': 'iTax',
    '价税合计_原币': 'iSum',
    '扣率1': 'iDiscRate',
    '扣率2': 'iDiscRate2',
    '折扣额_原币': 'iDisCount',
    '业务员编码': 'cPersonCode',
    '发运方式编码': 'cShipCode',
    '发货地址编码': 'cAddressCode',
    '发货地址': 'cAddress',
    '联系人': 'cLinkMan',
    '联系人编码': 'cLinkManCode',
    '付款条件编码': 'cPayCode',
    '表头备注': 'cMemo',
    '制单人': 'cMaker',
    '收付款协议编码': 'cPPCode',
    '是否立账单据': 'bMustBank',
    '立账日': 'dBillStart',
    '账期': 'iAccountPeriod',
    '到期日': 'dBillEnd',
    '退补标志': 'bReMakeTax',
}

# 表体字段映射
BODY_MAPPING = {
    '辅计量单位编码': 'cSAUnitCode',
    '换算率': 'iChangeRate',
    '件数': 'iNum',
    '税率': 'iTaxRate',
    '单价_本币_无税': 'iNatUnitPrice',
    '金额_本币_无税': 'iNatMoney',
    '税额_本币': 'iNatTax',
    '价税合计_本币': 'iNatSum',
    '折扣额': 'iDisCount',
    '表体备注': 'cMemo',
    '客户存货编码': 'cCusInvCode',
    '客户存货名称': 'cCusInvName',
    '批号': 'cBatch',
    '生产日期': 'dSDate',
    '保质期': 'iShelfLife',
    '保质期单位': 'cShelfLifeUnit',
    '失效日期': 'dInvalidDate',
    '项目大类编码': 'cItemCode',
    '项目大类名称': 'cItemName',
    '项目编码': 'cItemPsCode',
    '项目名称': 'cItemPsName',
    '自由项1': 'cFree1',
    '自由项2': 'cFree2',
    '自由项3': 'cFree3',
    '自由项4': 'cFree4',
    '自由项5': 'cFree5',
    '自由项6': 'cFree6',
    '自由项7': 'cFree7',
    '自由项8': 'cFree8',
    '自由项9': 'cFree9',
    '自由项10': 'cFree10',
    '发货方式': 'cDLCode',
    '使用数量': 'iQuantity',
    '权重比例': 'iWeight',
    '工厂编码': 'cWhCode',
    '有效期至': 'dVDate',
    '有效期计算项': 'cVTDate',
    '有效期推算方式': 'iVTDateType',
}

# 自定义项映射
CUSTOM_HEADER_MAPPING = {f'表头自定义项{i}': f'cDefine{i+21}' for i in range(1, 17)}
CUSTOM_BODY_MAPPING = {f'表体自定义项{i}': f'cDefine{i}' for i in range(1, 17)}

# 合并所有映射
ALL_MAPPING = {**HEADER_MAPPING, **BODY_MAPPING, **CUSTOM_HEADER_MAPPING, **CUSTOM_BODY_MAPPING}


class ExcelReader:
    """读取Excel文件，支持.xls, .xlsx和.zip压缩包"""

    def __init__(self, files_dir: str = 'files'):
        self.files_dir = Path(files_dir)
        self.temp_dir = None

    def extract_zip(self, zip_path: Path) -> List[Path]:
        """解压zip文件，返回内部Excel文件路径"""
        extracted_files = []
        if self.temp_dir is None:
            self.temp_dir = tempfile.mkdtemp()

        with zipfile.ZipFile(zip_path, 'r') as zip_ref:
            for member in zip_ref.namelist():
                if member.lower().endswith(('.xls', '.xlsx')):
                    extracted_path = zip_ref.extract(member, self.temp_dir)
                    extracted_files.append(Path(extracted_path))

        return extracted_files

    def get_all_excel_files(self) -> List[Path]:
        """获取所有Excel文件（包括zip内的文件）"""
        excel_files = []

        for item in self.files_dir.iterdir():
            if item.is_file():
                if item.suffix.lower() in ['.xls', '.xlsx']:
                    excel_files.append(item)
                elif item.suffix.lower() == '.zip':
                    # 解压zip文件
                    extracted = self.extract_zip(item)
                    excel_files.extend(extracted)

        return excel_files

    def read_excel(self, file_path: Path) -> Optional[pd.DataFrame]:
        """读取Excel文件，返回DataFrame"""
        try:
            if file_path.suffix.lower() == '.xls':
                df = pd.read_excel(file_path, dtype=str, na_values=[''])
            else:
                df = pd.read_excel(file_path, dtype=str, na_values=[''])

            # 清理列名中的空格
            df.columns = df.columns.str.strip()
            return df
        except Exception as e:
            print(f"读取文件失败 {file_path}: {e}")
            return None

    def validate_headers(self, df: pd.DataFrame) -> bool:
        """验证必需的表头是否存在"""
        actual_headers = set(df.columns)
        for required in REQUIRED_HEADERS:
            if required not in actual_headers:
                print(f"缺少必需表头: {required}")
                return False
        return True

    def cleanup(self):
        """清理临时目录"""
        if self.temp_dir and os.path.exists(self.temp_dir):
            shutil.rmtree(self.temp_dir)


class SQLGenerator:
    """生成用友U8发货单SQL"""

    def __init__(self, output_dir: str = 'output'):
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(exist_ok=True)

    def _format_value(self, value, is_string: bool = True) -> str:
        """格式化SQL值"""
        if pd.isna(value) or value == '' or value is None:
            return 'NULL'

        value = str(value).strip()

        if is_string:
            # 处理特殊字符
            value = value.replace("'", "''").replace('\\', '\\\\')
            return f"N'{value}'"
        else:
            try:
                # 尝试转为数字
                num = float(value)
                if num == int(num):
                    return str(int(num))
                return str(num)
            except:
                escaped = value.replace("'", "''")
                return f"N'{escaped}'"

    def _get_sql_value(self, row: pd.Series, col_name: str) -> str:
        """根据列名获取SQL值"""
        # 数值型列
        numeric_cols = [
            'iExchRate', 'iTaxRate', 'iQuantity', 'iUnitPrice', 'iTaxUnitPrice',
            'iMoney', 'iTax', 'iSum', 'iNatUnitPrice', 'iNatMoney', 'iNatTax',
            'iNatSum', 'iDiscRate', 'iDiscRate2', 'iDisCount', 'iNum',
            'iChangeRate', 'iLowPrice', 'iQuotePrice', 'iWeight', 'iShelfLife'
        ]

        # 日期型列
        date_cols = ['dDate', 'dSDate', 'dInvalidDate', 'dVDate', 'dBillStart', 'dBillEnd']

        # 布尔型列
        bool_cols = ['bFirst', 'bReturnFlag', 'bSettleAll', 'bPrice', 'bGifts', 'bMustBank', 'bReMakeTax', 'bcosting', 'bSettleAll']

        if col_name in numeric_cols:
            val = row.get(col_name, '')
            if pd.isna(val) or val == '':
                return '0'
            try:
                return str(float(val))
            except:
                return '0'

        if col_name in date_cols:
            val = row.get(col_name, '')
            if pd.isna(val) or val == '':
                return "GETDATE()"
            # 尝试解析日期
            try:
                if isinstance(val, str):
                    dt = pd.to_datetime(val)
                    return f"'{dt.strftime('%Y-%m-%d')}'"
            except:
                pass
            return f"'{val}'"

        if col_name in bool_cols:
            val = row.get(col_name, '')
            if pd.isna(val) or val == '' or str(val).strip() in ['0', '否', 'N', 'n', 'false']:
                return '0'
            return '1'

        # 字符串列
        return self._format_value(row.get(col_name, ''))

    def generate_header_sql(self, dlid: int, bill_code: str, header_row: pd.Series) -> str:
        """生成表头INSERT SQL"""
        # 获取表头数据
        cdlcode = header_row.get('发货单号', bill_code)
        ddate = header_row.get('发货日期', '')
        ccuscode = header_row.get('客户编码', '')
        cdepcode = header_row.get('部门编码', '')
        cexch_name = header_row.get('币种', '人民币')
        iexchrate = header_row.get('汇率', 1)
        itaxrate = header_row.get('表头税率', 0)
        cmaker = header_row.get('制单人', '')
        cbuscode = header_row.get('业务类型', '普通销售')
        cstcode = header_row.get('销售类型编号', '01')
        bfirst = header_row.get('退货标志', '0')
        cpersoncode = header_row.get('业务员编码', '')

        # 解析日期
        try:
            if isinstance(ddate, str):
                dt = pd.to_datetime(ddate)
                ddate_sql = f"'{dt.strftime('%Y-%m-%d')}'"
            else:
                ddate_sql = "GETDATE()"
        except:
            ddate_sql = "GETDATE()"

        # 布尔值转换
        bfirst_val = '0' if str(bfirst).strip() in ['0', '否', 'N', 'n', ''] else '1'

        sql = f"""--- 插入表头 (DispatchList) ---
INSERT INTO [DispatchList] (
    [DLID], [cDLCode], [cVouchType], [cSTCode], [dDate],
    [cDepCode], [cCusCode], [cexch_name], [iExchRate],
    [bFirst], [bReturnFlag], [bSettleAll], [cMaker],
    [iVTid], [cBusType], [iverifystate], [dcreatesystime]
) VALUES (
    @DLID, {self._format_value(cdlcode)}, N'05', {self._format_value(cstcode, False)}, {ddate_sql},
    {self._format_value(cdepcode)}, {self._format_value(ccuscode)}, {self._format_value(cexch_name)}, {iexchrate if iexchrate not in [None, '', 0] else 1},
    {bfirst_val}, 0, 0, {self._format_value(cmaker)},
    71, {self._format_value(cbuscode)}, 0, GETDATE()
);"""
        return sql

    def generate_body_sql(self, dlid: int, idlsid_start: int, rows: List[pd.Series]) -> str:
        """生成表体INSERT SQL"""
        sql_parts = []
        idlsid = idlsid_start

        for idx, row in enumerate(rows):
            # 获取表体数据
            cwhcode = row.get('仓库编码', '')
            cinvcode = row.get('存货编码', '')
            iquantity = row.get('主计量数量', 0)
            iunitprice = row.get('无税单价', 0)
            itaxunitprice = row.get('含税单价_原币', 0)
            imoney = row.get('金额_原币_无税', 0)
            itax = row.get('税额_原币', 0)
            isum = row.get('价税合计_原币', 0)
            itaxrate_body = row.get('税率', 0)
            cmemo = row.get('表体备注', '')
            cdefine22 = row.get('表头自定义项1', '')
            cdefine23 = row.get('表头自定义项2', '')

            # 自由项
            cfree1 = row.get('自由项1', '')
            cfree2 = row.get('自由项2', '')
            cfree3 = row.get('自由项3', '')
            cfree4 = row.get('自由项4', '')
            cfree5 = row.get('自由项5', '')
            cfree6 = row.get('自由项6', '')
            cfree7 = row.get('自由项7', '')
            cfree8 = row.get('自由项8', '')
            cfree9 = row.get('自由项9', '')
            cfree10 = row.get('自由项10', '')
            cbatch = row.get('批号', '')
            dsdate = row.get('生产日期', '')
            dinvaliddate = row.get('失效日期', '')

            sql_parts.append(f"""INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, {idlsid}, {self._format_value(cwhcode)}, {self._format_value(cinvcode)}, {iquantity if iquantity else 0},
    {iunitprice if iunitprice else 0}, {itaxunitprice if itaxunitprice else 0}, {imoney if imoney else 0}, {itax if itax else 0}, {isum if isum else 0},
    {iunitprice if iunitprice else 0}, {imoney if imoney else 0}, {isum if isum else 0}, {itaxrate_body if itaxrate_body else 0},
    {self._format_value(cmemo)}, {self._format_value(cdefine22)}, {self._format_value(cdefine23)}, 0, 1, {idx + 1}
);""")

            idlsid += 1

        return '\n'.join(sql_parts)

    def generate_update_sql(self) -> str:
        """生成更新UA_Identity的SQL"""
        sql = """
-- 使用系统数据库 UFSystem
USE UFSystem
GO

UPDATE ua_identity
SET ifatherid = (SELECT MAX(dlid) FROM UFDATA_603_2026..dispatchlist),
    ichildid = (SELECT MAX(idlsid) FROM UFDATA_603_2026..dispatchlists)
WHERE cacc_id = '603'
  AND cvouchtype = 'DISPATCH'

GO"""
        return sql

    def generate_header_part(self, inv_code: str, dlid: int, idlsid_start: int,
                             header_data: pd.Series, total_parts: int = 1) -> Tuple[str, int]:
        """生成包含表头的第一部分SQL"""
        lines = []
        current_idlsid = idlsid_start

        # 文件头
        lines.append(f"""/* ========================================
   用友U8发货单SQL
   单据号: {inv_code}
   生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
   ======================================== */""")

        # 表头注释
        lines.append("")
        lines.append(f"-- 此为第 1 部分，共 {total_parts} 部分")
        lines.append("")
        lines.append("DECLARE @DLID INT, @iDLsID INT;")
        lines.append(f"DECLARE @BillCode NVARCHAR(30) = N'{inv_code}';")
        lines.append("")
        lines.append("-- 自动获取ID，确保主子表关联一致")
        lines.append("SELECT @DLID = ISNULL(MAX(DLID), 0) + 1 FROM DispatchList WITH (UPDLOCK, HOLDLOCK);")
        lines.append(f"SELECT @iDLsID = ISNULL(MAX(iDLsID), {idlsid_start - 1}) + 1 FROM DispatchLists WITH (UPDLOCK, HOLDLOCK);")
        lines.append("")
        lines.append("BEGIN TRANSACTION;")
        lines.append("BEGIN TRY")
        lines.append("")

        # 生成表头
        header_sql = self.generate_header_sql(dlid, inv_code, header_data)
        lines.append(header_sql)
        lines.append("")

        # 返回当前的iDLsID起始值（后续分片会从这里继续）
        return '\n'.join(lines), current_idlsid

    def generate_single_invoice_complete(self, inv_code: str, dlid: int, idlsid_start: int,
                                        rows: List[pd.Series]) -> str:
        """生成单个发票的完整SQL（不拆分）"""
        lines = []
        current_idlsid = idlsid_start

        # 文件头
        lines.append(f"""/* ========================================
   用友U8发货单SQL
   单据号: {inv_code}
   生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
   ======================================== */""")

        lines.append("")
        lines.append("-- 此为第 1 部分，共 1 部分")
        lines.append("")
        lines.append("DECLARE @DLID INT, @iDLsID INT;")
        lines.append(f"DECLARE @BillCode NVARCHAR(30) = N'{inv_code}';")
        lines.append("")
        lines.append("-- 自动获取ID，确保主子表关联一致")
        lines.append("SELECT @DLID = ISNULL(MAX(DLID), 0) + 1 FROM DispatchList WITH (UPDLOCK, HOLDLOCK);")
        lines.append(f"SELECT @iDLsID = ISNULL(MAX(iDLsID), {idlsid_start - 1}) + 1 FROM DispatchLists WITH (UPDLOCK, HOLDLOCK);")
        lines.append("")
        lines.append("BEGIN TRANSACTION;")
        lines.append("BEGIN TRY")
        lines.append("")

        # 生成表头
        header_sql = self.generate_header_sql(dlid, inv_code, rows[0])
        lines.append(header_sql)
        lines.append("")

        # 生成表体（带行号）
        body_sql = self.generate_body_sql_with_rowno(dlid, current_idlsid, rows, 1)
        lines.append("--- 插入表体明细 (DispatchLists) ---")
        lines.append(body_sql)
        lines.append("")

        lines.append("COMMIT TRANSACTION;")
        lines.append("END TRY")
        lines.append("BEGIN CATCH")
        lines.append("    ROLLBACK TRANSACTION;")
        lines.append("    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();")
        lines.append("    RAISERROR(@ErrorMessage, 16, 1);")
        lines.append("END CATCH;")
        lines.append("")
        lines.append("-- 更新identity")
        lines.append("UPDATE ua_identity SET ifatherid = (SELECT MAX(DLID) FROM DispatchList), ichildid = (SELECT MAX(iDLsID) FROM DispatchLists) WHERE cacc_id = '603' AND cvouchtype = 'DISPATCH';")

        return '\n'.join(lines)

    def generate_body_part(self, inv_code: str, dlid: int, idlsid_start: int,
                           rows: List[pd.Series], part_num: int, total_parts: int,
                           start_rowno: int) -> str:
        """生成只包含表体的后续分片SQL"""
        lines = []
        current_idlsid = idlsid_start

        # 分片注释头
        lines.append(f"""/* ========================================
   用友U8发货单SQL - 明细分片
   单据号: {inv_code}
   本片明细: {len(rows)} 条
   起始行号: {start_rowno}
   生成时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}
   ======================================== */""")

        lines.append("")
        lines.append(f"-- 此为第 {part_num} 部分，共 {total_parts} 部分")
        lines.append("")
        lines.append("DECLARE @DLID INT;")
        lines.append("DECLARE @iDLsID INT;")
        lines.append(f"DECLARE @BillCode NVARCHAR(30) = N'{inv_code}';")
        lines.append("")
        lines.append("-- 通过单据号获取已创建的表头ID")
        lines.append("SELECT @DLID = DLID FROM DispatchList WITH (NOLOCK) WHERE cDLCode = @BillCode;")
        lines.append("")
        lines.append("IF @DLID IS NOT NULL")
        lines.append("BEGIN")
        lines.append("    -- 获取当前最大明细ID")
        lines.append("    SELECT @iDLsID = ISNULL(MAX(iDLsID), 0) FROM DispatchLists WITH (UPDLOCK, HOLDLOCK);")
        lines.append("")
        lines.append("    BEGIN TRANSACTION;")
        lines.append("    BEGIN TRY")
        lines.append("")

        # 生成表体
        body_sql = self.generate_body_sql_with_rowno(dlid, current_idlsid, rows, start_rowno)
        lines.append("--- 插入表体明细 (DispatchLists) ---")
        lines.append(body_sql)
        lines.append("")
        lines.append("    COMMIT TRANSACTION;")
        lines.append("    END TRY")
        lines.append("    BEGIN CATCH")
        lines.append("        ROLLBACK TRANSACTION;")
        lines.append("        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();")
        lines.append("        RAISERROR(@ErrorMessage, 16, 1);")
        lines.append("    END CATCH;")
        lines.append("END;")

        return '\n'.join(lines)

    def generate_body_sql_with_rowno(self, dlid: int, idlsid_start: int,
                                     rows: List[pd.Series], start_rowno: int) -> str:
        """生成带行号的表体SQL"""
        sql_parts = []
        idlsid = idlsid_start

        for idx, row in enumerate(rows):
            cwhcode = row.get('仓库编码', '')
            cinvcode = row.get('存货编码', '')
            iquantity = row.get('主计量数量', 0)
            iunitprice = row.get('无税单价', 0)
            itaxunitprice = row.get('含税单价_原币', 0)
            imoney = row.get('金额_原币_无税', 0)
            itax = row.get('税额_原币', 0)
            isum = row.get('价税合计_原币', 0)
            itaxrate_body = row.get('税率', 0)
            cmemo = row.get('表体备注', '')
            cdefine22 = row.get('表头自定义项1', '')
            cdefine23 = row.get('表头自定义项2', '')
            rownum = start_rowno + idx

            sql_parts.append(f"""INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + {idx + 1}), {self._format_value(cwhcode)}, {self._format_value(cinvcode)}, {iquantity if iquantity else 0},
    {iunitprice if iunitprice else 0}, {itaxunitprice if itaxunitprice else 0}, {imoney if imoney else 0}, {itax if itax else 0}, {isum if isum else 0},
    {iunitprice if iunitprice else 0}, {imoney if imoney else 0}, {isum if isum else 0}, {itaxrate_body if itaxrate_body else 0},
    {self._format_value(cmemo)}, {self._format_value(cdefine22)}, {self._format_value(cdefine23)}, 0, 1, {rownum}
);""")

        return '\n'.join(sql_parts)

    def generate_first_part_complete(self, inv_code: str, dlid: int, idlsid_start: int,
                                     rows: List[pd.Series], total_parts: int) -> str:
        """生成完整的第一个分片（包含表头和部分表体）"""
        header_str, current_idlsid = self.generate_header_part(inv_code, dlid, idlsid_start, rows[0], total_parts)

        # rows已经是切割好的数据，直接使用
        first_part_rows = rows
        start_rowno = 1

        body_sql = self.generate_body_sql_with_rowno(dlid, current_idlsid, first_part_rows, start_rowno)

        lines = header_str.split('\n')
        lines.append("--- 插入表体明细 (DispatchLists) ---")
        lines.append(body_sql)
        lines.append("")
        lines.append("COMMIT TRANSACTION;")
        lines.append("END TRY")
        lines.append("BEGIN CATCH")
        lines.append("    ROLLBACK TRANSACTION;")
        lines.append("    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();")
        lines.append("    RAISERROR(@ErrorMessage, 16, 1);")
        lines.append("END CATCH;")
        lines.append("")
        lines.append("-- 更新identity")
        lines.append("UPDATE ua_identity SET ifatherid = (SELECT MAX(DLID) FROM DispatchList), ichildid = (SELECT MAX(iDLsID) FROM DispatchLists) WHERE cacc_id = '603' AND cvouchtype = 'DISPATCH';")

        return '\n'.join(lines)


class DispatchProcessor:
    """发货单数据处理器"""

    def __init__(self, files_dir: str = 'files', output_dir: str = 'output'):
        self.reader = ExcelReader(files_dir)
        self.generator = SQLGenerator(output_dir)
        self.output_dir = Path(output_dir)

    def process(self):
        """处理所有文件"""
        print("开始处理发货单数据...")

        # 获取所有Excel文件
        excel_files = self.reader.get_all_excel_files()
        print(f"找到 {len(excel_files)} 个Excel文件")

        if not excel_files:
            print("未找到任何Excel文件")
            return

        all_data = []

        # 读取并验证每个文件
        for file_path in excel_files:
            print(f"处理文件: {file_path.name}")
            df = self.reader.read_excel(file_path)

            if df is None:
                continue

            if not self.reader.validate_headers(df):
                print(f"跳过文件 {file_path.name}：缺少必需表头")
                continue

            all_data.append(df)

        if not all_data:
            print("没有有效的数据可处理")
            return

        # 合并所有数据
        combined_df = pd.concat(all_data, ignore_index=True)
        print(f"总共读取 {len(combined_df)} 条数据")

        # 按发货单号分组
        if '发货单号' not in combined_df.columns:
            print("错误：数据中缺少'发货单号'列")
            return

        grouped = combined_df.groupby('发货单号')

        # 为每个发票创建分组
        invoice_groups = {}
        for invoice_no, group in grouped:
            if pd.notna(invoice_no) and str(invoice_no).strip():
                invoice_groups[str(invoice_no).strip()] = group.to_dict('records')

        print(f"共 {len(invoice_groups)} 个发货单")

        # 生成SQL文件
        self._generate_sql_files(invoice_groups)

        # 清理临时文件
        self.reader.cleanup()

        print(f"SQL文件已生成到: {self.output_dir.absolute()}")

    def _generate_sql_files(self, invoice_groups: Dict[str, List]):
        """生成SQL文件

        文件命名规则：
        - 单个发票一个文件：单号.sql
        - 单个发票拆分成多个：单号_1.sql, 单号_2.sql
        """
        MAX_ROWS_PER_FILE = 1000  # 每文件最大明细数

        # 清空output文件夹
        if self.output_dir.exists():
            for f in self.output_dir.iterdir():
                if f.suffix == '.sql':
                    f.unlink()
        self.output_dir.mkdir(exist_ok=True)

        all_invoices = list(invoice_groups.items())

        print(f"\n===== 开始生成SQL =====")
        print(f"总发票数: {len(all_invoices)}")
        print(f"每文件最大明细数: {MAX_ROWS_PER_FILE}")
        print()

        current_dlid = 1
        current_idlsid = 1

        for inv_code, rows in all_invoices:
            row_count = len(rows)
            print(f"处理单号: {inv_code}, 明细数: {row_count}")

            if row_count <= MAX_ROWS_PER_FILE:
                # 不需要拆分，直接生成一个文件
                sql_content = self.generator.generate_single_invoice_complete(
                    inv_code, current_dlid, current_idlsid, rows
                )
                file_name = f"{inv_code}.sql"
                self._save_sql_file(sql_content, file_name)
                current_idlsid += row_count
                current_dlid += 1
            else:
                # 需要拆分成多个文件，每1000条一个
                num_parts = (row_count + MAX_ROWS_PER_FILE - 1) // MAX_ROWS_PER_FILE
                print(f"  -> 拆分为 {num_parts} 个文件")

                for part_idx in range(num_parts):
                    start_idx = part_idx * MAX_ROWS_PER_FILE
                    end_idx = min((part_idx + 1) * MAX_ROWS_PER_FILE, row_count)
                    part_rows = rows[start_idx:end_idx]
                    part_num = part_idx + 1

                    if part_num == 1:
                        # 第一部分包含表头
                        sql_content = self.generator.generate_first_part_complete(
                            inv_code, current_dlid, current_idlsid, part_rows, num_parts
                        )
                    else:
                        # 后续部分只包含表体
                        start_rowno = start_idx + 1
                        sql_content = self.generator.generate_body_part(
                            inv_code, current_dlid, current_idlsid,
                            part_rows, part_num, num_parts, start_rowno
                        )

                    file_name = f"{inv_code}_{part_num}.sql"
                    self._save_sql_file(sql_content, file_name)

                current_idlsid += row_count
                current_dlid += 1

        print(f"\n===== SQL生成完成 =====")

    def _save_sql_file(self, sql_content: str, file_name: str):
        """保存SQL文件"""
        with open(self.output_dir / file_name, 'w', encoding='utf-8') as f:
            f.write(sql_content)
        print(f"  -> 生成文件: {file_name}")


def main():
    """主函数"""
    import argparse

    parser = argparse.ArgumentParser(description='用友U8发货单SQL生成器')
    parser.add_argument('--files-dir', default='files', help='Excel文件目录')
    parser.add_argument('--output-dir', default='output', help='SQL输出目录')

    args = parser.parse_args()

    processor = DispatchProcessor(args.files_dir, args.output_dir)
    processor.process()


if __name__ == '__main__':
    main()
