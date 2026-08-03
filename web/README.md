# 用友 U8 发货单 SQL 生成器（Web）

纯前端应用：上传发货单 Excel（.xls / .xlsx）或压缩包，选择账套 ID 与年度，在浏览器本地生成 T-SQL 脚本并打包为 zip 下载。数据不出浏览器。

## 运行

```bash
npm install
npm run dev       # 本地开发 http://localhost:3000
npm test          # vitest 单元测试
npm run build     # 生产构建
```

## 说明

- `lib/sqlGenerator.ts`：SQL 生成逻辑，是仓库根目录 `dispatch_sql_generator.py` 的逐字节对齐移植（vitest 用 Python 实际产出的 SQL 做基准回归）。
- `lib/excelParser.ts`：Excel 解析 + 必需表头校验 + 按发货单号分组。
- `lib/zip.ts`：zip 内递归收集 .xls/.xlsx。
- `public/vendor/xlsx.full.min.js`：SheetJS（0.20.3），经 `next/script` 注入为 `window.XLSX`。该文件是 `node_modules/xlsx/dist/` 的拷贝。
- 日期单元格按 SheetJS 的 UTC 锚定读取（`fmtDateStr` 用 UTC getter）。

## 部署

Vercel 部署时把 Root Directory 设为 `web`（或 `cd web && vercel`）。
