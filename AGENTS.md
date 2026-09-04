# AGENTS.md

用友 U8 发货单工具：从 Excel 生成 T-SQL（`dispatch_sql_generator.py`），以及调开放平台 API 审核发货单。纯 Python 脚本，无测试、无打包，注释为中文。

## 运行前提

- 必须从仓库根目录运行，`files/`、`output/`、`config.json` 均为相对路径。
- `config.json`（已 gitignore，需手工创建）：`from_account`、`app_key`、`app_secret`、`user_id`、`password`。不要提交。
- `cache.json`（已 gitignore）为 token 缓存，脚本自动生成/刷新，无需手工管理；判活预留 60 秒缓冲。
- `requirements.txt` 缺 `requests`（`get_token.py`、`audit_consignment.py` 用到），新环境需补装：`pip install pandas openpyxl xlrd requests`。
- `.python-version` 声明 3.12，但系统 Python 3.9 已验证可跑。

## 命令

| 脚本 | 用途 | 关键参数 |
|---|---|---|
| `dispatch_sql_generator.py` | 主工具：读 Excel 生成发货单 SQL | `--files-dir`（默认 `files`）、`--output-dir`（默认 `output`）、`--acc-id`（CLI 默认 `604`，但 `SQLGenerator.__init__` 默认 `603`，以 CLI 为准）、`--year`（默认 `2026`） |
| `get_token.py` | 获取/刷新 token | `--force` 强制刷新、`--show` 查看缓存 |
| `audit_consignment.py` | 审核发货单（先调 ERP 登录） | `--voucher-code` 单个，或 `--batch`（文件路径或逗号分隔编号）；`--agree 0/1`、`--opinion`、`--to-account`（默认 `mansheng`） |
| `excel_to_json.py` | 调试：Excel 转 JSON | `--files-dir`、`--output`（默认 `output/data.json`，附带 `_grouped.json`） |

## 关键约定

- Excel 列头为中文，必须与 `REQUIRED_HEADERS` / `HEADER_MAPPING` / `BODY_MAPPING` 精确匹配；`dispatch_sql_generator.py` 缺必需表头则整文件跳过。
- 输入支持 `.xls`（靠 `xlrd`）、`.xlsx`、`.zip` 内 Excel，`dispatch_sql_generator.py` 用 `rglob` 递归；`excel_to_json.py` 只遍历一层子目录，不要混用两者逻辑。
- 生成的是 SQL Server T-SQL（`N'...'`、`GETDATE()`、`[方括号]`），写 `DispatchList`（表头，`cVouchType=N'05'`）/`DispatchLists`（表体），文末更新 `UFSystem..ua_identity`（`cVouchType='DISPATCH'`）。
- 自定义项映射：表头自定义项 i→`cDefine{i+21}`，表体自定义项 i→`cDefine{i}`；但表体 SQL 实际只用自定义项 1→`cDefine22`（平台订单号）、2→`cDefine23`（销售订单号）。
- 每次运行清空 `output/` 下所有 `.sql`；单发货单明细超 10000 条拆分为 `单号_1.sql`、`单号_2.sql`…，首片含表头、后续片经 `cDLCode` 反查 `DLID`。
- 取号在事务内（`BEGIN TRAN` 后 `SELECT MAX … WITH (UPDLOCK,HOLDLOCK)`，锁保持到 `COMMIT`），表体固定 `(@iDLsID+1…+N)`；首片自带 `cDLCode` 幂等守卫（已存在则报错跳过），后续片找不到表头则报错要求先导首片。
- 导入纪律：单会话、按文件名顺序逐个执行，禁止多窗口/多人并发；不要在前台集中做单时段批量导入。
- 若报 `ix_DispatchLists_iDLsID` 重复键（常伴“资源共享冲突”），先跑 `fix_ua_identity_604_2026.sql`（三段：诊断→更新→复核）把 `ua_identity` 对齐到 `MAX+1`，再串行重导；换账套/年份需改脚本内库名与 `cAcc_id`。
- `audit_consignment.py` 的 `AUDIT_URL` 实为 `/api/consignment/unverify`（命名如此，非笔误）；每次审核先调 `/api/user/login`；errcode `30001/30002/30003/30007` 自动刷新 token 重试一次。
- `files/`、`output/` 均 gitignore，只含业务数据（当前 `files/` 下为 33MB 的 `604账套2026.08月.xls`），不要提交。
