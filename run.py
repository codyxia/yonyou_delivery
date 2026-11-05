#!/usr/bin/env python3
"""一键流程：从下载目录取一批 Excel/zip -> files/ -> 生成 SQL -> 超阈值自动打 zip。

默认复制"同一批下载"的文件：修改时间与最新文件相差不超过 --window-minutes 分钟的文件，
这样一次下载多个 Excel 时会全部处理，而不会混入下载目录里的陈年旧文件。

生成成功后会自动清空 files/ 下的源文件；若 .sql 数量超过阈值打了 zip，
打包成功后还会清空 output/ 下的 .sql（输出 zip 在仓库根目录，不受影响）。

用法：
    python run.py --acc-id 604 --year 2026
    python run.py --src ~/Downloads --zip-threshold 5
    python run.py --all               # 复制下载目录顶层的全部候选文件
    python run.py --top 3             # 只取最近的 3 个文件
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


def select_batch(candidates, take_all: bool = False, top: int = 0,
                 window_minutes: int = 30):
    """从候选文件里挑出本次要处理的文件。

    - take_all：全部候选；
    - top > 0：最近的 top 个；
    - 否则：以最新文件为基准，取修改时间相差不超过 window_minutes 分钟的一批。

    candidates 已按修改时间倒序。
    """
    if take_all:
        return list(candidates)
    if top > 0:
        return list(candidates[:top])
    if not candidates:
        return []
    newest_mtime = candidates[0].stat().st_mtime
    cutoff = newest_mtime - window_minutes * 60
    return [p for p in candidates if p.stat().st_mtime >= cutoff]


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


def clear_sql_files(output_dir: Path):
    """删除 output/ 下的 .sql（不动 zip 等其他文件），返回被删文件名。"""
    removed = []
    if not output_dir.is_dir():
        return removed
    for p in output_dir.glob("*.sql"):
        if p.is_file():
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
    parser.add_argument("--yes", action="store_true", help="兼容保留参数，无实际作用（已默认直接执行）")
    parser.add_argument("--all", action="store_true",
                        help="复制下载目录顶层的全部候选文件（默认只取同一批下载的）")
    parser.add_argument("--top", type=int, default=0, metavar="N",
                        help="只取最近的 N 个文件（0 表示按批次窗口取）")
    parser.add_argument("--window-minutes", type=int, default=30, metavar="M",
                        help="批次窗口：与最新文件修改时间相差不超过 M 分钟的文件都算同一批（默认 30）")
    parser.add_argument("--list", action="store_true", help="只列出候选文件，不执行")
    parser.add_argument("--no-zip", action="store_true", help="跳过自动压缩")
    parser.add_argument("--keep-files", action="store_true",
                        help="不清空 files/，直接追加复制，且生成后保留源文件（调试用）")
    parser.add_argument("--keep-source", action="store_true",
                        help="生成 SQL 后保留 files/ 源文件（默认生成成功后清空）")
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

    selected = select_batch(candidates, take_all=args.all, top=args.top,
                            window_minutes=args.window_minutes)
    selected_names = {p.name for p in selected}

    mode = ("全部文件" if args.all else
            f"最近 {args.top} 个" if args.top > 0 else
            f"同一批下载（窗口 {args.window_minutes} 分钟）")
    print(f"候选文件（按最新排序，本次选取策略：{mode}）：")
    for p in candidates[:20]:
        mtime = datetime.fromtimestamp(p.stat().st_mtime).strftime("%Y-%m-%d %H:%M:%S")
        mark = " <-- 本次使用" if p.name in selected_names else ""
        print(f"  {mtime}  {p.name}{mark}")
    if len(candidates) > 20:
        print(f"  ...（另有 {len(candidates) - 20} 个更早的文件未显示）")

    if args.list:
        return 0

    print(f"本次使用 {len(selected)} 个文件")

    # 1. 清空 files/ 并复制
    if args.keep_files:
        print("保留 files/ 现有文件（--keep-files），注意 output 会合并所有 files 数据")
    else:
        removed = clear_files_dir(files_dir)
        print(f"已清空 files/ 下 {len(removed)} 个旧文件")
    files_dir.mkdir(parents=True, exist_ok=True)
    for src in selected:
        dest = files_dir / src.name
        if dest.exists() and not args.keep_files:
            dest.unlink()
        shutil.copy2(src, dest)
        print(f"已复制：{src.name} -> {dest}")

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

    # 4. 生成成功后清空 files/ 源文件，避免下次误用旧数据
    if args.keep_source or args.keep_files:
        print("\n保留 files/ 源文件（--keep-source/--keep-files）")
    else:
        removed_files = clear_files_dir(files_dir)
        print(f"\n已清空 files/ 下 {len(removed_files)} 个源文件")

    # 5. 超阈值自动压缩（zip 放当前目录，避免被下次清空 output 误删）
    if not args.no_zip and len(sql_files) > args.zip_threshold:
        stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        zip_name = f"{args.acc_id}_{args.year}_{stamp}.zip"
        zip_path = Path.cwd() / zip_name
        with zipfile.ZipFile(zip_path, "w", zipfile.ZIP_DEFLATED) as zf:
            for p in sql_files:
                zf.write(p, arcname=p.name)
        print(f"超过阈值（>{args.zip_threshold}），已压缩：{zip_path}")
        print("可直接将此 zip 发给运维")

        # 压缩包已落盘，清掉 output 里的 .sql，避免残留造成重复导入
        removed_sql = clear_sql_files(output_dir)
        print(f"已清空 output/ 下 {len(removed_sql)} 个 .sql")
    else:
        print(f"未超过阈值（<={args.zip_threshold}），保留 output 下的 .sql 供直接导入")

    return 0


if __name__ == "__main__":
    sys.exit(main())
