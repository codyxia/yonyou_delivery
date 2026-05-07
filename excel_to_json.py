#!/usr/bin/env python3
"""Excel数据解析为JSON，用于调试"""

import os
import json
import pandas as pd
from pathlib import Path
import zipfile
import tempfile

# 用户提供的完整表头
ALL_HEADERS = [
    '单据类型', '期初标志', '发货单号', '发货日期', '业务类型', '销售类型编号',
    '客户编码', '部门编码', '币种', '汇率', '表头税率', '退货标志', '先发货先开票标志',
    '仓库编码', '存货编码', '主计量单位编码', '主计量数量', '报价含税', '最低售价',
    '赠品', '报价', '含税单价_原币', '无税单价', '金额_原币_无税', '税额_原币',
    '价税合计_原币', '扣率1', '扣率2', '折扣额_原币', '业务员编码', '发运方式编码',
    '发货地址编码', '发货地址', '联系人', '联系人编码', '付款条件编码', '表头备注',
    '表头自定义项1', '表头自定义项2', '表头自定义项3', '表头自定义项4', '表头自定义项5',
    '表头自定义项6', '表头自定义项7', '表头自定义项8', '表头自定义项9', '表头自定义项10',
    '表头自定义项11', '表头自定义项12', '表头自定义项13', '表头自定义项14', '表头自定义项15',
    '表头自定义项16', '收付款协议编码', '是否立账单据', '立账日', '账期', '到期日',
    '退补标志', '辅计量单位编码', '换算率', '件数', '税率', '单价_本币_无税',
    '金额_本币_无税', '税额_本币', '价税合计_本币', '折扣额', '表体备注',
    '客户存货编码', '客户存货名称', '批号', '生产日期', '保质期', '保质期单位',
    '失效日期', '表体自定义项1', '表体自定义项2', '表体自定义项3', '表体自定义项4',
    '表体自定义项5', '表体自定义项6', '表体自定义项7', '表体自定义项8', '表体自定义项9',
    '表体自定义项10', '表体自定义项11', '表体自定义项12', '表体自定义项13', '表体自定义项14',
    '表体自定义项15', '表体自定义项16', '项目大类编码', '项目大类名称', '项目编码',
    '项目名称', '自由项1', '自由项2', '自由项3', '自由项4', '自由项5',
    '自由项6', '自由项7', '自由项8', '自由项9', '自由项10', '制单人',
    '父节点编码', '子节点编码', '发货方式', '使用数量', '权重比例', '工厂编码',
    '有效期至', '有效期计算项', '有效期推算方式'
]


def extract_zip_files(files_dir):
    """解压zip文件"""
    temp_dir = tempfile.mkdtemp()
    zip_files = []

    for item in Path(files_dir).iterdir():
        if item.is_file() and item.suffix.lower() == '.zip':
            with zipfile.ZipFile(item, 'r') as zip_ref:
                for member in zip_ref.namelist():
                    if member.lower().endswith(('.xls', '.xlsx')):
                        extracted_path = zip_ref.extract(member, temp_dir)
                        zip_files.append(Path(extracted_path))
        elif item.is_dir():
            for sub_item in item.iterdir():
                if sub_item.suffix.lower() in ['.xls', '.xlsx']:
                    zip_files.append(sub_item)

    return zip_files


def get_all_excel_files(files_dir):
    """获取所有Excel文件"""
    excel_files = []

    for item in Path(files_dir).iterdir():
        if item.is_file():
            if item.suffix.lower() in ['.xls', '.xlsx']:
                excel_files.append(item)
            elif item.suffix.lower() == '.zip':
                excel_files.extend(extract_zip_files(item))
        elif item.is_dir():
            for sub_item in item.iterdir():
                if sub_item.suffix.lower() in ['.xls', '.xlsx']:
                    excel_files.append(sub_item)

    return excel_files


def excel_to_json(files_dir='files', output_file='output/data.json'):
    """将Excel数据转换为JSON"""
    excel_files = get_all_excel_files(files_dir)
    print(f"找到 {len(excel_files)} 个Excel文件")

    all_data = []

    for file_path in excel_files:
        print(f"处理文件: {file_path.name}")
        try:
            df = pd.read_excel(file_path, dtype=str, na_values=[''])
            # 清理列名中的空格
            df.columns = df.columns.str.strip()

            # 检查列名
            print(f"  实际列数: {len(df.columns)}")
            print(f"  列名: {list(df.columns)}")

            # 逐行解析
            for idx, row in df.iterrows():
                record = {}
                for col in df.columns:
                    val = row.get(col, '')
                    if pd.isna(val) or val == '':
                        continue
                    record[col] = val

                if record:
                    all_data.append(record)

        except Exception as e:
            print(f"  读取失败: {e}")

    print(f"\n总共解析 {len(all_data)} 条数据")

    # 输出到JSON
    Path(output_file).parent.mkdir(parents=True, exist_ok=True)
    with open(output_file, 'w', encoding='utf-8') as f:
        json.dump(all_data, f, ensure_ascii=False, indent=2)

    print(f"JSON已保存到: {output_file}")

    # 同时按发货单号分组输出
    grouped = {}
    for record in all_data:
        dlcode = record.get('发货单号', 'unknown')
        if dlcode not in grouped:
            grouped[dlcode] = []
        grouped[dlcode].append(record)

    grouped_file = output_file.replace('.json', '_grouped.json')
    with open(grouped_file, 'w', encoding='utf-8') as f:
        json.dump(grouped, f, ensure_ascii=False, indent=2)

    print(f"分组JSON已保存到: {grouped_file}")

    # 打印第一条数据的键值对，用于调试
    if all_data:
        print("\n第一条数据示例:")
        for k, v in list(all_data[0].items())[:10]:
            print(f"  {k}: {v}")


if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(description='Excel数据解析为JSON')
    parser.add_argument('--files-dir', default='files', help='Excel文件目录')
    parser.add_argument('--output', default='output/data.json', help='JSON输出路径')
    args = parser.parse_args()

    excel_to_json(args.files_dir, args.output)