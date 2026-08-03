"use client";

import { useRef, useState } from "react";
import JSZip from "jszip";
import { parseExcel, groupRows } from "@/lib/excelParser";
import { generateAll, REQUIRED_HEADERS, type DataRow } from "@/lib/sqlGenerator";
import { extractZipToExcel, isExcelName } from "@/lib/zip";

function formatSize(n: number): string {
  return n >= 1048576 ? `${(n / 1048576).toFixed(1)} MB` : `${(n / 1024).toFixed(1)} KB`;
}

function downloadBlob(blob: Blob, name: string) {
  const url = URL.createObjectURL(blob);
  const a = document.createElement("a");
  a.href = url;
  a.download = name;
  document.body.appendChild(a);
  a.click();
  setTimeout(() => {
    document.body.removeChild(a);
    URL.revokeObjectURL(url);
  }, 1000);
}

export default function Home() {
  const [files, setFiles] = useState<File[]>([]);
  const [busy, setBusy] = useState(false);
  const [accId, setAccId] = useState("604");
  const [year, setYear] = useState("2026");
  const [dragging, setDragging] = useState(false);
  const [showHeaders, setShowHeaders] = useState(false);
  const logRef = useRef<HTMLPreElement>(null);
  const inputRef = useRef<HTMLInputElement>(null);

  const log = (msg: string) => {
    if (logRef.current) {
      logRef.current.textContent += msg + "\n";
      logRef.current.scrollTop = logRef.current.scrollHeight;
    }
  };

  const addFiles = (list: FileList | null) => {
    if (!list) return;
    setFiles((prev) => [...prev, ...Array.from(list)]);
  };

  const handleParse = async () => {
    if (busy) return;
    if (logRef.current) logRef.current.textContent = "";
    if (!files.length) {
      log("请先选择文件（zip 压缩包或 .xls/.xlsx 文件）");
      return;
    }
    const acc = accId.trim() || "604";
    const yr = year.trim() || "2026";
    if (!/^\d+$/.test(acc) || !/^\d+$/.test(yr)) {
      log("账套ID 和 年度必须是数字");
      return;
    }
    if (!window.XLSX) {
      log("Excel 解析库加载失败，请刷新页面重试");
      return;
    }
    setBusy(true);
    try {
      // 收集 Excel 文件：zip 内解压 + 单个文件
      const excelFiles: { name: string; data: ArrayBuffer }[] = [];
      for (const f of files) {
        if (f.name.toLowerCase().endsWith(".zip")) {
          log(`解压 ${f.name} ...`);
          let extracted: { name: string; data: ArrayBuffer }[];
          try {
            extracted = await extractZipToExcel(await f.arrayBuffer(), f.name);
          } catch (e) {
            log(`  ${f.name} 解压失败: ${e instanceof Error ? e.message : e}`);
            continue;
          }
          if (!extracted.length) {
            log(`  ${f.name} 中没有 .xls/.xlsx 文件`);
            continue;
          }
          excelFiles.push(...extracted);
        } else if (isExcelName(f.name)) {
          excelFiles.push({ name: f.name, data: await f.arrayBuffer() });
        } else {
          log(`忽略不支持的格式: ${f.name}`);
        }
      }
      if (!excelFiles.length) {
        log("没有可解析的 Excel 文件");
        return;
      }

      // 解析 + 必需表头校验，缺表头的整份跳过
      const allRows: DataRow[] = [];
      let skipped = 0;
      for (const ef of excelFiles) {
        log(`解析 ${ef.name} ...`);
        try {
          const res = parseExcel(ef.data, window.XLSX);
          if (!res.ok) {
            skipped++;
            log(`  跳过: ${res.reason}`);
            continue;
          }
          log(`  ${res.rows.length} 行`);
          allRows.push(...res.rows);
        } catch (e) {
          skipped++;
          log(`  读取失败: ${e instanceof Error ? e.message : e}`);
        }
      }
      if (!allRows.length) {
        log("没有有效数据可处理");
        return;
      }

      // 按发货单号分组 → 生成 SQL → 打包
      const groups = groupRows(allRows);
      log(`共 ${groups.size} 个发货单`);
      log("");
      const sqlFiles = generateAll(groups, acc, yr, log);
      log("");
      log("打包下载 ...");

      const zip = new JSZip();
      for (const [name, content] of sqlFiles) zip.file(name, content);
      const blob = await zip.generateAsync({ type: "blob" });
      downloadBlob(blob, `dispatch_sql_${acc}_${yr}.zip`);
      log(
        `完成！共 ${sqlFiles.size} 个 SQL 文件${skipped ? `（${skipped} 个文件被跳过）` : ""}`,
      );
    } catch (e) {
      log(`出错: ${e instanceof Error ? e.message : e}`);
    } finally {
      setBusy(false);
    }
  };

  return (
    <main className="mx-auto w-full max-w-3xl flex-1 px-4 py-10 sm:py-14">
      <header className="mb-8">
        <h1 className="text-2xl font-bold tracking-tight">用友 U8 发货单 SQL 生成器</h1>
        <p className="mt-2 text-sm text-zinc-600">
          上传发货单 Excel（.xls / .xlsx）或压缩包，选择账套与年度，即可生成可直接执行的
          T-SQL 脚本并打包下载。全部在浏览器本地处理，数据不会上传。
        </p>
      </header>

      {/* 上传区 */}
      <section className="rounded-xl border border-zinc-200 bg-white p-5 shadow-sm">
        <input
          ref={inputRef}
          id="fileInput"
          type="file"
          accept=".zip,.xls,.xlsx"
          multiple
          className="hidden"
          onChange={(e) => addFiles(e.target.files)}
        />
        <div
          onClick={() => inputRef.current?.click()}
          onDragOver={(e) => {
            e.preventDefault();
            setDragging(true);
          }}
          onDragLeave={() => setDragging(false)}
          onDrop={(e) => {
            e.preventDefault();
            setDragging(false);
            addFiles(e.dataTransfer.files);
          }}
          className={`flex cursor-pointer flex-col items-center justify-center rounded-lg border-2 border-dashed py-10 text-center transition-colors ${
            dragging
              ? "border-blue-500 bg-blue-50"
              : "border-zinc-300 hover:border-blue-400 hover:bg-zinc-50"
          }`}
        >
          <p className="text-base font-semibold text-zinc-800">点击选择或拖拽文件到此处</p>
          <p className="mt-1 text-sm text-zinc-500">
            支持 .zip 压缩包、.xls / .xlsx 单个文件，可多选
          </p>
        </div>
        {files.length > 0 && (
          <ul className="mt-4 space-y-1.5">
            {files.map((f, i) => (
              <li
                key={i}
                className="flex items-center justify-between rounded-md bg-zinc-50 px-3 py-2 text-sm"
              >
                <span className="truncate">{f.name}</span>
                <span className="ml-3 shrink-0 text-zinc-400">{formatSize(f.size)}</span>
              </li>
            ))}
          </ul>
        )}
      </section>

      {/* 参数 + 解析 */}
      <section className="mt-4 flex flex-wrap items-end gap-4 rounded-xl border border-zinc-200 bg-white p-5 shadow-sm">
        <label className="flex flex-col gap-1 text-sm text-zinc-600">
          账套 ID
          <input
            type="text"
            inputMode="numeric"
            value={accId}
            onChange={(e) => setAccId(e.target.value)}
            className="w-32 rounded-md border border-zinc-300 px-3 py-2 text-sm focus:border-blue-500 focus:outline-none focus:ring-2 focus:ring-blue-200"
          />
        </label>
        <label className="flex flex-col gap-1 text-sm text-zinc-600">
          年度
          <input
            type="text"
            inputMode="numeric"
            value={year}
            onChange={(e) => setYear(e.target.value)}
            className="w-32 rounded-md border border-zinc-300 px-3 py-2 text-sm focus:border-blue-500 focus:outline-none focus:ring-2 focus:ring-blue-200"
          />
        </label>
        <button
          onClick={handleParse}
          disabled={busy}
          className="rounded-md bg-blue-600 px-6 py-2 text-sm font-semibold text-white transition-colors hover:bg-blue-700 disabled:cursor-not-allowed disabled:bg-blue-300"
        >
          {busy ? "解析中 ..." : "解析并生成 SQL"}
        </button>
        <button
          onClick={() => setShowHeaders((v) => !v)}
          className="text-sm text-zinc-500 underline decoration-dotted underline-offset-4 hover:text-zinc-700"
        >
          {showHeaders ? "收起" : "查看必需表头"}
        </button>
      </section>
      {showHeaders && (
        <p className="mt-2 text-xs leading-6 text-zinc-500">
          Excel 列头必须包含以下字段（缺一该文件整份跳过）：{REQUIRED_HEADERS.join("、")}
        </p>
      )}

      {/* 日志 */}
      <section className="mt-4 rounded-xl border border-zinc-200 bg-white p-5 shadow-sm">
        <h2 className="mb-2 text-sm font-semibold text-zinc-700">运行日志</h2>
        <pre
          ref={logRef}
          className="max-h-[26rem] overflow-auto whitespace-pre-wrap break-all rounded-lg bg-zinc-950 p-4 font-mono text-xs leading-5 text-emerald-400"
        />
      </section>

      <footer className="mt-8 text-center text-xs text-zinc-400">
        生成规则与 Python 工具 dispatch_sql_generator.py 保持一致
      </footer>
    </main>
  );
}
