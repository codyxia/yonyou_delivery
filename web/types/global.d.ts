import type { XLSXNS } from "@/lib/excelParser";

declare global {
  interface Window {
    // 由 public/vendor/xlsx.full.min.js 脚本注入的全局 SheetJS 命名空间
    XLSX: XLSXNS;
  }
}

export {};
