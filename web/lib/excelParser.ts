import { REQUIRED_HEADERS, type DataRow } from "./sqlGenerator";

// SheetJS 命名空间的最小接口（浏览器用 window.XLSX，测试用 npm 包的 import）
export interface XLSXNS {
  read(data: ArrayBuffer, opts: Record<string, unknown>): {
    Sheets: Record<string, unknown>;
    SheetNames: string[];
  };
  utils: {
    sheet_to_json(ws: unknown, opts: Record<string, unknown>): unknown[][];
  };
}

export type ParseResult = { ok: true; rows: DataRow[] } | { ok: false; reason: string };

// 读取第一个工作表，第一行作为表头（列名去空格，复刻 df.columns.str.strip()），
// 缺必需表头返回 ok:false
export function parseExcel(arrayBuffer: ArrayBuffer, XLSX: XLSXNS): ParseResult {
  const wb = XLSX.read(arrayBuffer, { type: "array", cellDates: true });
  const ws = wb.Sheets[wb.SheetNames[0]];
  if (!ws) return { ok: false, reason: "无工作表" };

  const arr = XLSX.utils.sheet_to_json(ws, {
    header: 1,
    raw: true,
    defval: null,
    blankrows: false,
    // 关键：不传 UTC:true 时 sheet_to_json 会把日期做 utc_to_local 转换，
    // 在非 UTC 时区导致日期差一天；加 UTC:true 保持 UTC 锚定，配合 UTC getter 正确取日
    UTC: true,
  }) as (CellOrNull[] | null)[];

  if (!arr.length || !arr[0]) return { ok: false, reason: "空文件" };

  const headers = arr[0].map((h) => (h === null || h === undefined ? "" : String(h).trim()));
  const hs = new Set(headers);
  const missing = REQUIRED_HEADERS.filter((h) => !hs.has(h));
  if (missing.length) return { ok: false, reason: `缺少必需表头: ${missing.join(", ")}` };

  const rows: DataRow[] = [];
  for (let i = 1; i < arr.length; i++) {
    const r = arr[i];
    if (!r) continue;
    const obj: DataRow = {};
    for (let c = 0; c < headers.length; c++) {
      const h = headers[c];
      if (!h) continue;
      const val = r[c];
      obj[h] = val === undefined || val === null ? null : val;
    }
    rows.push(obj);
  }
  return { ok: true, rows };
}

type CellOrNull = string | number | Date | boolean | null;

// 按发货单号分组（复刻 pandas groupby，键排序保证确定性）
export function groupRows(allRows: DataRow[]): Map<string, DataRow[]> {
  const groups = new Map<string, DataRow[]>();
  for (const row of allRows) {
    const code = row["发货单号"];
    const s = code === null || code === undefined ? "" : String(code).trim();
    if (!s) continue;
    if (!groups.has(s)) groups.set(s, []);
    groups.get(s)!.push(row);
  }
  return groups;
}
