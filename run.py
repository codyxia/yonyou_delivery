#!/usr/bin/env python3
"""一键流程：从下载目录取最新 Excel/zip -> files/ -> 生成 SQL -> 超阈值自动打 zip。

用法：
    python run.py --acc-id 604 --year 2026
    python run.py --src ~/Downloads --zip-threshold 5 --yes
    python run.py --list              # 只列出候选文件，不执行
"""
import argparse
import shutil
import sys
import zipfile
from datetime import datetime
from pathlib import Path

from dispatch_sql_generator import DispatchProcessor

CANDIDATE_SUFFIXES = {".xls", ".xlsx", ".zip"}


def find_candidates(src_dir: Path):
    """只看顶层（不递归），按修改时间倒序返回候选文件。"""
    if not src_dir.is_dir():
        return None
    files = [
        p for p in src_dir.iterdir()
        if p.is_file() and p.suffix.lower() in CANDIDATE_SUFFIXES
    ]
    files.sort(key=lambda p: p.stat().st_mtime, reverse=True)
    return files


def clear_files_dir(files_dir: Path):
    """删除 files/ 下旧的 Excel/zip（不动其他文件如 .DS_Store）。"""
    removed = []
    if not files_dir.is_dir():
        files_dir.mkdir(parents=True, exist_ok=True)
        return removed
    for p in files_dir.iterdir():
        if p.is_file() and p.suffix.lower() in CANDIDATE_SUFFIXES:
            p.unlink()
            removed.append(p.name)
    return removed


def main() -> int:
    parser = argparse.ArgumentParser(description="发货单SQL一键生成（含取数/压缩）")
    parser.add_argument("--src", default="~/Downloads", help="下载目录（默认 ~/Downloads）")
    parser.add_argument("--files-dir", default="files", help="Excel 输入目录（默认 files）")
    parser.add_argument("--output-dir", default="output", help="SQL 输出目录（默认 output）")
    parser.add_argument("--acc-id", default="604", help="账套ID（默认 604）")
    parser.add_argument("--year", default="2026", help="年度（默认 2026）")
    parser.add_argument("--zip-threshold", type=int, default=5,
                        help="output 下 .sql 超过此数量则自动压缩（默认 5）")
    parser.add_argument("--yes", action="store_true", help="跳过确认直接执行")
    parser.add_argument("--list", action="store_true", help="只列出候选文件，不执行")
    parser.add_argument("--no-zip", action="store_true", help="跳过自动压缩")
    parser.add_argument("--keep-files", action="store_true",
                        help="不清空 files/，直接追加复制（调试用）")
    args = parser.parse_args()

    src_dir = Path(args.src).expanduser()
    files_dir = Path(args.files_dir)
    output_dir = Path(args.output_dir)

    candidates = find_candidates(src_dir)
    if candidates is None:
        print(f"错误：下载目录不存在：{src_dir}", file=sys.stderr)
        return 1
    if not candidates:
        print(f"错误：在 {src_dir} 顶层未找到 .xls/.xlsx/.zip 文件", file=sys.stderr)
        return 1

    print(f"候选文件（按最新排序，取第 1 个）：")
    for i, p in enumerate(candidates[:5]):
        mtime = datetime.fromtimestamp(p.stat().st_mtime).strftime("%Y-%m-%d %H:%M:%S")
        mark = " <-- 本次使用" if i == 0 else ""
        print(f"  {mtime}  {p.name}{mark}")

    if args.list:
        return 0

    latest = candidates[0]
    if not args.yes:
        try:
            ans = input(f"使用 {latest.name}？[Y/n] ").strip().lower()
        except (EOFError, KeyboardInterrupt):
            print("\n已取消")
            return 130
        if ans not in ("", "y", "yes"):
            print("已取消")
            return 0

    # 1. 清空 files/ 并复制
    if args.keep_files:
        print("保留 files/ 现有文件（--keep-files），注意 output 会合并所有 files 数据")
    else:
        removed = clear_files_dir(files_dir)
        print(f"已清空 files/ 下 {len(removed)} 个旧文件")
    files_dir.mkdir(parents=True, exist_ok=True)
    dest = files_dir / latest.name
    shutil.copy2(latest, dest)
    print(f"已复制：{latest} -> {dest}")

    # 2. 生成 SQL（复用现有逻辑）
    processor = DispatchProcessor(str(files_dir), str(output_dir), args.acc_id, args.year)
    processor.process()

    # 3. 统计 output
    sql_files = sorted(output_dir.glob("*.sql")) if output_dir.is_dir() else []
    if not sql_files:
        print("错误：output 下没有生成任何 .sql（可能表头校验失败整文件跳过），请检查上方日志",
              file=sys.stderr)
        return 1
    total_bytes = sum(p.stat().st_size for p in sql_files)
    print(f"\n共生成 {len(sql_files)} 个 SQL，总计 {total_bytes / 1024:.1f} KB：")
    for p in sql_files:
        print(f"  {p.name} ({p.stat().st_size / 1024:.1f} KB)")

    # 4. 超阈值自动压缩（zip 放当前目录，避免被下次清空 output 误删）
    if not args.no_zip and len(sql_files) > args.zip_threshold:
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        zip_name = f"{args.acc_id}_{args.year}_{stamp}.zip"
        zip_path = Path.cwd() / zip_name
        with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zf:
            for p in sql_files:
                zf.write(p, arcname=p.name)
        print(f"\n超过阈值（>{args.zip_threshold}），已压缩：{zip_path}")
        print("可直接将此 zip 发给运维")
    else:
        print(f"\n未超过阈值（<={args.zip_threshold}），无需压缩")

    return 0


if __name__ == "__main__":
    sys.exit(main())
