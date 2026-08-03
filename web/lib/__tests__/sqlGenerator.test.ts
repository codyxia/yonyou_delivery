import { describe, expect, it } from "vitest";
import * as XLSX from "xlsx";
import JSZip from "jszip";
import { parseExcel, groupRows, type XLSXNS } from "../excelParser";
import {
  generateAll,
  generateHeaderSQL,
  fmtDate,
  getNumeric,
  formatValue,
} from "../sqlGenerator";
import { extractZipToExcel, isExcelName } from "../zip";

// 参考 SQL：由 Python 工具 dispatch_sql_generator.py 实际生成（output/SPT20260601.sql），
// 仅把"生成时间"一行归一化为 X，其余逐字节一致
const EXPECTED_SQL = `/* ========================================
   用友U8发货单SQL
   单据号: SPT20260601
   生成时间: X
   ======================================== */

-- 此为第 1 部分，共 1 部分

DECLARE @DLID INT, @iDLsID INT;
DECLARE @BillCode NVARCHAR(30) = N'SPT20260601';

-- 自动获取ID，确保主子表关联一致
SELECT @DLID = ISNULL(MAX(DLID), 0) + 1 FROM DispatchList WITH (UPDLOCK, HOLDLOCK);
SELECT @iDLsID = ISNULL(MAX(iDLsID), 0) + 1 FROM DispatchLists WITH (UPDLOCK, HOLDLOCK);

BEGIN TRANSACTION;
BEGIN TRY

--- 插入表头 (DispatchList) ---
INSERT INTO [DispatchList] (
    [DLID], [cDLCode], [cVouchType], [cSTCode], [dDate],
    [cDepCode], [cCusCode], [cexch_name], [iExchRate],
    [bFirst], [bReturnFlag], [bSettleAll], [cMaker],
    [iVTid], [cBusType], [iverifystate], [dcreatesystime]
) VALUES (
    @DLID, N'SPT20260601', N'05', N'1', '2026-06-30',
    N'02', N'12', N'欧元', 7.916,
    0, 0, 0, N'张冰',
    71, N'普通销售', 0, GETDATE()
);

--- 插入表体明细 (DispatchLists) ---
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cDefine22], [cDefine23], [bSettleAll], [bCosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 1), N'01', N'01001257', 8.0,
    19.38, 19.38, 155.04, 0.0, 155.04,
    153.41, 1227.3, 1227.3, 0,
    NULL, N'QJDEZJM654-140225-OW', 0, 1, 1
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cDefine22], [cDefine23], [bSettleAll], [bCosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 2), N'01', N'01001257', 16.0,
    19.38, 19.38, 310.08, 0.0, 310.08,
    153.41, 2454.59, 2454.59, 0,
    NULL, N'QJDEZJM654-140225-OW', 0, 1, 2
);

COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    RAISERROR(@ErrorMessage, 16, 1);
END CATCH;

-- 更新identity
UPDATE [UFSystem].[dbo].[ua_identity] SET iFatherId = (SELECT MAX(DLID) + 1 FROM [UFDATA_604_2026].[dbo].[DispatchList]), iChildId = (SELECT MAX(iDLsID) + 1 FROM [UFDATA_604_2026].[dbo].[DispatchLists]) WHERE cAcc_id = '604' AND cVouchType = 'DISPATCH';`;

const HEADERS = [
  "单据类型", "期初标志", "发货单号", "发货日期", "业务类型", "销售类型编号",
  "客户编码", "部门编码", "币种", "汇率", "表头税率", "退货标志",
  "先发货先开票标志", "仓库编码", "存货编码", "主计量单位编码", "主计量数量",
  "含税单价_原币", "无税单价", "金额_原币_无税", "税额_原币", "价税合计_原币",
  "业务员编码", "发运方式编码", "制单人", "单价_本币_无税", "金额_本币_无税",
  "价税合计_本币", "税率", "表体自定义项1", "表体自定义项2",
];

type Cell = string | number | Date | null;

function makeRow(
  inv: string,
  qty: number,
  money: number,
  natMoney: number,
  natSum: number,
): Cell[] {
  return [
    "普通销售", "", inv, new Date(2026, 5, 30), "普通销售", "1",
    "12", "02", "欧元", 7.916, 0, "0",
    "0", "01", "01001257", "PCS", qty,
    19.38, 19.38, money, 0, money,
    "P001", "S1", "张冰", 153.41, natMoney,
    natSum, "", "", "QJDEZJM654-140225-OW",
  ];
}

function makeXlsx(rows: Cell[][]): ArrayBuffer {
  const ws = XLSX.utils.aoa_to_sheet([HEADERS, ...rows], {
    cellDates: true,
    dateNF: "yyyy/mm/dd",
  });
  const wb = XLSX.utils.book_new();
  XLSX.utils.book_append_sheet(wb, ws, "Sheet1");
  return XLSX.write(
    wb,
    {
      type: "array",
      bookType: "xlsx",
      cellDates: true,
      dateNF: "yyyy/mm/dd",
    } as unknown as XLSX.WritingOptions,
  ) as ArrayBuffer;
}

const X = XLSX as unknown as XLSXNS;
const norm = (s: string) => s.replace(/生成时间: .*/g, "生成时间: X").trim();

describe("值格式化（复刻 _get_numeric / _format_value）", () => {
  it("数值列：整数输出 x.0，小数原样，空值输出默认值", () => {
    expect(getNumeric(8)).toBe("8.0");
    expect(getNumeric(19.38)).toBe("19.38");
    expect(getNumeric(7.916)).toBe("7.916");
    expect(getNumeric(null)).toBe("0");
    expect(getNumeric("")).toBe("0");
    expect(getNumeric("abc")).toBe("0");
    expect(getNumeric(null, 1)).toBe("1");
  });

  it("字符串列：空值 NULL，单引号/反斜杠转义", () => {
    expect(formatValue(null)).toBe("NULL");
    expect(formatValue("")).toBe("NULL");
    expect(formatValue("QJDEZJM654-140225-OW")).toBe("N'QJDEZJM654-140225-OW'");
    expect(formatValue("a'b")).toBe("N'a''b'");
    expect(formatValue("a\\b")).toBe("N'a\\\\b'");
    expect(formatValue("  张冰  ")).toBe("N'张冰'");
    expect(formatValue(12)).toBe("N'12.0'"); // pandas dtype=str 数值字符串化
  });

  it("日期：空 GETDATE()，Date 对象用 UTC 取日（SheetJS 日期单元格是 UTC 锚定）", () => {
    expect(fmtDate(null)).toBe("GETDATE()");
    expect(fmtDate("")).toBe("GETDATE()");
    expect(fmtDate("2026-06-30")).toBe("'2026-06-30'");
    expect(fmtDate("2026/6/30")).toBe("'2026-06-30'");
    expect(fmtDate("2026-06-30 10:20:00")).toBe("'2026-06-30'");
    expect(fmtDate(new Date(Date.UTC(2026, 5, 30)))).toBe("'2026-06-30'");
  });
});

describe("Excel 解析", () => {
  it("缺必需表头的文件被跳过", () => {
    const ws = XLSX.utils.aoa_to_sheet([["发货单号", "备注"], ["X", "y"]]);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, "S");
    const buf = XLSX.write(wb, { type: "array", bookType: "xlsx" }) as ArrayBuffer;
    const res = parseExcel(buf, X);
    expect(res.ok).toBe(false);
    if (!res.ok) expect(res.reason).toContain("缺少必需表头");
  });

  it("列名去空格后正确识别必需表头", () => {
    const ws = XLSX.utils.aoa_to_sheet([
      HEADERS.map((h) => ` ${h} `),
      makeRow("SPT20260601", 8, 155.04, 1227.3, 1227.3),
    ]);
    const wb = XLSX.utils.book_new();
    XLSX.utils.book_append_sheet(wb, ws, "S");
    const buf = XLSX.write(wb, { type: "array", bookType: "xlsx" }) as ArrayBuffer;
    const res = parseExcel(buf, X);
    expect(res.ok).toBe(true);
  });
});

describe("发货单 SQL 生成", () => {
  it("SPT20260601 与 Python 参考输出逐字节一致", () => {
    const buf = makeXlsx([
      makeRow("SPT20260601", 8, 155.04, 1227.3, 1227.3),
      makeRow("SPT20260601", 16, 310.08, 2454.59, 2454.59),
    ]);
    const res = parseExcel(buf, X);
    expect(res.ok).toBe(true);
    if (!res.ok) return;
    const groups = groupRows(res.rows);
    const files = generateAll(groups, "604", "2026");
    expect([...files.keys()]).toEqual(["SPT20260601.sql"]);
    expect(norm(files.get("SPT20260601.sql")!)).toBe(norm(EXPECTED_SQL));
  });

  it("表头 SQL 字段与默认值正确", () => {
    const sql = generateHeaderSQL(
      { 发货单号: "D001", 发货日期: "2026-06-30", 客户编码: "C1" },
      "D001",
    );
    expect(sql).toContain("N'05'"); // cVouchType 固定
    expect(sql).toContain("N'01'"); // 销售类型编号默认
    expect(sql).toContain("N'人民币'"); // 币种默认
    expect(sql).toContain("1.0"); // 汇率列缺失 -> _get_numeric(1, 1)
    expect(sql).toContain("71, N'普通销售'");
  });

  it("超过 10000 条明细拆分为多文件，后续分片通过 cDLCode 反查表头", () => {
    const rows: Cell[][] = [];
    for (let i = 0; i < 10001; i++) rows.push(makeRow("BIG001", 1, 19.38, 153.41, 153.41));
    const res = parseExcel(makeXlsx(rows), X);
    expect(res.ok).toBe(true);
    if (!res.ok) return;
    const files = generateAll(groupRows(res.rows), "604", "2026");
    const keys = [...files.keys()].sort();
    expect(keys).toEqual(["BIG001_1.sql", "BIG001_2.sql"]);
    const part1 = files.get("BIG001_1.sql")!;
    const part2 = files.get("BIG001_2.sql")!;
    expect(part1).toContain("-- 此为第 1 部分，共 2 部分");
    expect(part2).toContain("-- 此为第 2 部分，共 2 部分");
    expect(part2).toContain("SELECT @DLID = DLID FROM DispatchList WITH (NOLOCK) WHERE cDLCode = @BillCode;");
    expect(part2).toContain(", 10001"); // 续接行号
    expect(part2).not.toContain(", 10000\n");
  });

  it("多文件合并 + 多单号分组", () => {
    const a = parseExcel(makeXlsx([makeRow("SPT20260601", 8, 155.04, 1227.3, 1227.3)]), X);
    const b = parseExcel(makeXlsx([makeRow("SPT丢缺货20260601", 3, 58.14, 460.23, 460.23)]), X);
    expect(a.ok && b.ok).toBe(true);
    if (!a.ok || !b.ok) return;
    const files = generateAll(groupRows([...a.rows, ...b.rows]), "604", "2026");
    expect([...files.keys()].sort()).toEqual(["SPT20260601.sql", "SPT丢缺货20260601.sql"]);
  });
});

describe("zip 解压", () => {
  it("从 zip 内收集 .xls/.xlsx，跳过无关文件", async () => {
    const inner = makeXlsx([makeRow("Z001", 1, 19.38, 153.41, 153.41)]);
    const zip = new JSZip();
    zip.file("inner/a.xlsx", inner);
    zip.file("inner/b.xls", inner);
    zip.file("readme.txt", "hi");
    const buf = (await zip.generateAsync({ type: "arraybuffer" })) as ArrayBuffer;
    const files = await extractZipToExcel(buf, "pkg.zip");
    expect(files.map((f) => f.name)).toEqual(["pkg.zip/inner/a.xlsx", "pkg.zip/inner/b.xls"]);
    expect(isExcelName("a.xls")).toBe(true);
    expect(isExcelName("a.xlsx")).toBe(true);
    expect(isExcelName("a.xlsm")).toBe(false);
    expect(isExcelName("readme.txt")).toBe(false);
  });
});
