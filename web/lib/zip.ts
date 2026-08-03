import JSZip from "jszip";

export interface ExcelBuffer {
  name: string;
  data: ArrayBuffer;
}

// 从 zip 压缩包中递归收集 .xls/.xlsx 文件（复刻 ExcelReader.get_all_excel_files）
export async function extractZipToExcel(
  zipBuffer: ArrayBuffer,
  sourceName: string,
): Promise<ExcelBuffer[]> {
  const zip = await JSZip.loadAsync(zipBuffer);
  const entries: JSZip.JSZipObject[] = [];
  zip.forEach((p, e) => {
    if (!e.dir && /\.(xls|xlsx)$/i.test(p)) entries.push(e);
  });
  const out: ExcelBuffer[] = [];
  for (const e of entries) {
    out.push({ name: `${sourceName}/${e.name}`, data: await e.async("arraybuffer") });
  }
  return out;
}

export function isExcelName(name: string): boolean {
  return /\.(xls|xlsx)$/i.test(name);
}
