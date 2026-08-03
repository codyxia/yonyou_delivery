# AGENTS.md

用友 U8 相关工具：从发货单 Excel 生成 T-SQL，以及调用用友开放平台 API 审核发货单。分为两部分：

- **Python 脚本**（仓库根目录）：无测试、无打包，独立脚本，注释均为中文。
- **Web 应用**（`web/`，Next.js 16 + Tailwind v4）：发货单 SQL 生成的纯前端版本，浏览器本地处理，部署于 Vercel。

> 注意：`web/` 是 Next.js 16，AGENTS.md 指出有破坏性变更——改 `web/` 前先读 `web/node_modules/next/dist/docs/`。

## Python 脚本

### 运行前提

- 必须存在 `config.json`（已 gitignore，不随仓库提交），字段：`from_account`、`app_key`、`app_secret`、`user_id`、`password`。
- token 自动缓存在 `cache.json`（gitignore，脚本自动生成），过期自动刷新，无需手工管理。
- `requirements.txt` 只列了 `pandas/openpyxl/xlrd`，但 `get_token.py` 和 `audit_consignment.py` 还依赖 `requests`——新环境需补装。
- 脚本须从仓库根目录运行（`files/`、`output/`、`config.json` 均为相对路径）。

### 命令（均 `python3 xxx.py`）

| 脚本 | 用途 | 关键参数 |
|---|---|---|
| `dispatch_sql_generator.py` | 主工具：读 Excel 生成发货单 SQL | `--files-dir`、`--output-dir`、`--acc-id`（CLI 默认 `604`，注意 `SQLGenerator.__init__` 默认是 `603`）、`--year`（默认 `2026`） |
| `get_token.py` | 获取/刷新 token | `--force` 强制刷新、`--show` 查看缓存 |
| `audit_consignment.py` | 审核发货单（先调 ERP 登录） | `--voucher-code` 单个，或 `--batch`（文件路径或逗号分隔编号）；errcode `30001`-`30007` 自动刷新 token 并重试 |
| `excel_to_json.py` | 调试：Excel 转 JSON | `--files-dir`、`--output` |

### 关键约定

- Excel 列头必须是中文，与 `dispatch_sql_generator.py` 中的 `REQUIRED_HEADERS` / `HEADER_MAPPING` / `BODY_MAPPING` 精确匹配；缺必需表头的文件整份跳过。
- 读取支持 `.xls`、`.xlsx` 及 `.zip` 内（递归），`.xls` 靠 `xlrd`。
- 生成的是 SQL Server T-SQL（`N'...'`、`GETDATE()`、`[方括号表名]`），写入 `DispatchList`/`DispatchLists`，并在文末更新 `UFSystem..ua_identity` 以保持主子表 ID 一致。
- 表体自定义项 1→`cDefine22`、自定义项 2→`cDefine23`（即平台订单号、销售订单号）；表头自定义项 i→`cDefine{i+21}`，表体自定义项 i→`cDefine{i}`。
- 每次运行会先清空 `output/` 下所有 `.sql` 文件；单个发货单明细超过 10000 条时拆成 `单号_1.sql`、`单号_2.sql`…（后续分片通过 `cDLCode` 反查表头 `DLID`）。
- `files/`、`output/` 均在 `.gitignore` 中，不要提交输入/输出数据。

## Web 应用（`web/`）

### 命令（在 `web/` 目录内）

| 命令 | 说明 |
|---|---|
| `npm run dev` | 本地开发 |
| `npm run build` | 生产构建（Turbopack，Next.js 16 默认） |
| `npm test` | vitest 单元测试 |
| `npm run lint` | eslint |

### 关键约定

- **纯前端**：所有解析与 SQL 生成在浏览器本地完成，无 API 路由。`web/lib/sqlGenerator.ts` 是 `dispatch_sql_generator.py` 的逐字节对齐移植，vitest 用 Python 实际产出的 SQL 做基准回归。
- **SheetJS 加载方式**：`xlsx` 依赖来自 SheetJS 官方 CDN tarball（`https://cdn.sheetjs.com/xlsx-0.20.3/...`，npm 官方包已过时且有漏洞），浏览器端不走打包器——`public/vendor/xlsx.full.min.js` 经 `next/script`（`beforeInteractive`）注入为全局 `window.XLSX`，页面通过 `window.XLSX` 使用。`public/vendor/**` 已加 eslint ignore。该文件是 `node_modules/xlsx/dist/` 的拷贝，升级依赖时需同步拷贝。
- 日期单元格：`XLSX.utils.sheet_to_json` 默认会把日期做 `utc_to_local` 转换，非 UTC 时区会差一天——`parseExcel` 必须传 `UTC: true` 保持 UTC 锚定，格式化用 UTC getter（`fmtDateStr`）。
- 生成逻辑改动后必须 `npm test`——单测里嵌了 Python 参考输出做逐字节对比。

### 部署

应用是纯前端，`next.config.ts` 已启用 `output: "export"`，`npm run build` 产出 `web/out/`（约 2MB）静态目录，可直接拷贝到任意静态托管。

- **Vercel**：项目已关联 `yonyou-dispatch-sql`。Vercel 的 `*.vercel.app` 域名在国内通常无法直连，需代理访问；可用 `cd web && vercel --prod` 重新部署。
- **国内可达**：把 `out/` 上传到 Gitee Pages / 腾讯云 COS / 阿里云 OSS / 公司 nginx 等（部署在域名根路径；若挂在子目录如 `gitee.io/仓库名/`，需在 `next.config.ts` 设置 `basePath` 后重新 build）。
- 仓库根的 Python 文件不参与部署。
