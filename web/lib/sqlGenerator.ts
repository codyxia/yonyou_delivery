// SQL 生成逻辑 —— 与 dispatch_sql_generator.py 逐字节对齐

export type Cell = string | number | Date | boolean | null;
export type DataRow = Record<string, Cell>;

export const REQUIRED_HEADERS = [
  "发货单号", "发货日期", "客户编码", "部门编码", "币种", "汇率",
  "表头税率", "仓库编码", "存货编码", "主计量单位编码", "主计量数量",
  "含税单价_原币", "无税单价", "金额_原币_无税", "税额_原币", "价税合计_原币",
  "业务员编码", "发运方式编码", "制单人",
];

const MAX_ROWS_PER_FILE = 10000;

// 复刻 pandas dtype=str 的数值字符串化：8.0 -> '8.0'
function pandasStr(v: number): string {
  return Number.isInteger(v) ? `${v}.0` : String(v);
}

// 复刻 _get_numeric(value, default)：空/NaN -> default，否则按 float 的 repr 输出
export function getNumeric(v: Cell, def = 0): string {
  if (v === null || v === undefined || v === "") return String(def);
  const n = Number(v);
  if (Number.isNaN(n)) return String(def);
  return Number.isInteger(n) ? `${n}.0` : String(n);
}

// 复刻 _format_value（字符串列）：空 -> NULL；单引号/反斜杠转义后包 N'...'
export function formatValue(v: Cell): string {
  if (v === null || v === undefined || v === "") return "NULL";
  let s: string;
  if (v instanceof Date) {
    s = fmtDateStr(v);
  } else if (typeof v === "number") {
    s = pandasStr(v);
  } else {
    s = String(v);
  }
  s = s.trim();
  s = s.replace(/'/g, "''").replace(/\\/g, "\\\\");
  return `N'${s}'`;
}

// 复刻表头布尔转换：str(v).strip() in ['0','否','N','n',''] -> '0' 否则 '1'
function boolVal(v: Cell): string {
  if (v === null || v === undefined) return "0";
  const s = String(v).trim();
  return ["0", "否", "N", "n", ""].includes(s) ? "0" : "1";
}

// SheetJS 的 sheet_to_json 在传了 UTC:true 后（见 excelParser）日期保持 UTC 锚定，
// 必须用 UTC getter 格式化，否则在非 UTC 时区会错一天
function fmtDateStr(d: Date): string {
  const p = (n: number) => String(n).padStart(2, "0");
  return `${d.getUTCFullYear()}-${p(d.getUTCMonth() + 1)}-${p(d.getUTCDate())}`;
}

// 复刻表头日期处理：空 -> GETDATE()；可解析 -> 'YYYY-MM-DD'；否则原样输出
export function fmtDate(v: Cell): string {
  if (v === null || v === undefined || v === "") return "GETDATE()";
  if (v instanceof Date) {
    if (Number.isNaN(v.getTime())) return "GETDATE()";
    return `'${fmtDateStr(v)}'`;
  }
  const s = String(v).trim();
  if (!s) return "GETDATE()";
  const m = s.match(/^(\d{4})[-\/年](\d{1,2})[-\/月](\d{1,2})日?/);
  if (m) return `'${m[1]}-${String(m[2]).padStart(2, "0")}-${String(m[3]).padStart(2, "0")}'`;
  const d = new Date(s);
  if (Number.isNaN(d.getTime())) return `'${s}'`;
  return `'${fmtDateStr(d)}'`;
}

function fmtNow(): string {
  const d = new Date();
  const p = (n: number) => String(n).padStart(2, "0");
  return `${d.getFullYear()}-${p(d.getMonth() + 1)}-${p(d.getDate())} ${p(d.getHours())}:${p(d.getMinutes())}:${p(d.getSeconds())}`;
}

export function generateHeaderSQL(row: DataRow, billCode: string): string {
  const has = (k: string) => Object.prototype.hasOwnProperty.call(row, k);
  const v = (k: string): Cell => row[k];
  const cdlcode = has("发货单号") ? v("发货单号") : billCode;
  const ddate = fmtDate(v("发货日期"));
  const cstcode = has("销售类型编号") ? v("销售类型编号") : "01";
  const cexchName = has("币种") ? v("币种") : "人民币";
  const iexchrate = getNumeric(has("汇率") ? v("汇率") : 1, 1);
  const bfirst = boolVal(has("期初标志") ? v("期初标志") : "0");
  const breturnflag = boolVal(has("退货标志") ? v("退货标志") : "0");
  const bsettleall = boolVal(has("先发货先开票标志") ? v("先发货先开票标志") : "0");
  const cbuscode = has("业务类型") ? v("业务类型") : "普通销售";

  return `--- 插入表头 (DispatchList) ---
INSERT INTO [DispatchList] (
    [DLID], [cDLCode], [cVouchType], [cSTCode], [dDate],
    [cDepCode], [cCusCode], [cexch_name], [iExchRate],
    [bFirst], [bReturnFlag], [bSettleAll], [cMaker],
    [iVTid], [cBusType], [iverifystate], [dcreatesystime]
) VALUES (
    @DLID, ${formatValue(cdlcode)}, N'05', ${formatValue(cstcode)}, ${ddate},
    ${formatValue(v("部门编码"))}, ${formatValue(v("客户编码"))}, ${formatValue(cexchName)}, ${iexchrate},
    ${bfirst}, ${breturnflag}, ${bsettleall}, ${formatValue(v("制单人"))},
    71, ${formatValue(cbuscode)}, 0, GETDATE()
);`;
}

function generateBodySQL(rows: DataRow[], startRowNo: number): string {
  const parts: string[] = [];
  for (let idx = 0; idx < rows.length; idx++) {
    const row = rows[idx];
    const vals = `    @DLID, (@iDLsID + ${idx + 1}), ${formatValue(row["仓库编码"])}, ${formatValue(row["存货编码"])}, ${getNumeric(row["主计量数量"])},
    ${getNumeric(row["无税单价"])}, ${getNumeric(row["含税单价_原币"])}, ${getNumeric(row["金额_原币_无税"])}, ${getNumeric(row["税额_原币"])}, ${getNumeric(row["价税合计_原币"])},
    ${getNumeric(row["单价_本币_无税"])}, ${getNumeric(row["金额_本币_无税"])}, ${getNumeric(row["价税合计_本币"])}, ${getNumeric(row["税率"])},
    ${formatValue(row["表体自定义项1"])}, ${formatValue(row["表体自定义项2"])}, 0, 1, ${startRowNo + idx}`;
    parts.push(`INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cDefine22], [cDefine23], [bSettleAll], [bCosting], [irowno]
) VALUES (
${vals}
);`);
  }
  return parts.join("\n");
}

function identityUpdate(accId: string, year: string): string {
  return `-- 更新identity
UPDATE [UFSystem].[dbo].[ua_identity] SET iFatherId = (SELECT MAX(DLID) + 1 FROM [UFDATA_${accId}_${year}].[dbo].[DispatchList]), iChildId = (SELECT MAX(iDLsID) + 1 FROM [UFDATA_${accId}_${year}].[dbo].[DispatchLists]) WHERE cAcc_id = '${accId}' AND cVouchType = 'DISPATCH';`;
}

function fileHeader(invCode: string): string {
  return `/* ========================================
   用友U8发货单SQL
   单据号: ${invCode}
   生成时间: ${fmtNow()}
   ======================================== */`;
}

function transactionOpen(idlsidStart: number, billCode: string): string {
  return `DECLARE @DLID INT, @iDLsID INT;
DECLARE @BillCode NVARCHAR(30) = N'${billCode}';

-- 自动获取ID，确保主子表关联一致
SELECT @DLID = ISNULL(MAX(DLID), 0) + 1 FROM DispatchList WITH (UPDLOCK, HOLDLOCK);
SELECT @iDLsID = ISNULL(MAX(iDLsID), ${idlsidStart - 1}) + 1 FROM DispatchLists WITH (UPDLOCK, HOLDLOCK);

BEGIN TRANSACTION;
BEGIN TRY
`;
}

function transactionClose(): string {
  return `
COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    RAISERROR(@ErrorMessage, 16, 1);
END CATCH;`;
}

export function generateSingleInvoice(
  invCode: string,
  idlsidStart: number,
  rows: DataRow[],
  accId: string,
  year: string,
): string {
  const header = generateHeaderSQL(rows[0], invCode);
  const body = generateBodySQL(rows, 1);
  return `${fileHeader(invCode)}

-- 此为第 1 部分，共 1 部分

${transactionOpen(idlsidStart, invCode)}
${header}

--- 插入表体明细 (DispatchLists) ---
${body}
${transactionClose()}

${identityUpdate(accId, year)}`;
}

export function generateFirstPart(
  invCode: string,
  idlsidStart: number,
  rows: DataRow[],
  totalParts: number,
  accId: string,
  year: string,
): string {
  const header = generateHeaderSQL(rows[0], invCode);
  const body = generateBodySQL(rows, 1);
  return `${fileHeader(invCode)}

-- 此为第 1 部分，共 ${totalParts} 部分

${transactionOpen(idlsidStart, invCode)}
${header}

--- 插入表体明细 (DispatchLists) ---
${body}
${transactionClose()}

${identityUpdate(accId, year)}`;
}

// 拆分模式下后续分片（仅表体，通过 cDLCode 反查表头 DLID）
export function generateBodyPart(
  invCode: string,
  partNum: number,
  totalParts: number,
  rows: DataRow[],
  startRowNo: number,
): string {
  const body = generateBodySQL(rows, startRowNo);
  return `/* ========================================
   用友U8发货单SQL - 明细分片
   单据号: ${invCode}
   本片明细: ${rows.length} 条
   起始行号: ${startRowNo}
   生成时间: ${fmtNow()}
   ======================================== */

-- 此为第 ${partNum} 部分，共 ${totalParts} 部分

DECLARE @DLID INT;
DECLARE @iDLsID INT;
DECLARE @BillCode NVARCHAR(30) = N'${invCode}';

-- 通过单据号获取已创建的表头ID
SELECT @DLID = DLID FROM DispatchList WITH (NOLOCK) WHERE cDLCode = @BillCode;

IF @DLID IS NOT NULL
BEGIN
    -- 获取当前最大明细ID
    SELECT @iDLsID = ISNULL(MAX(iDLsID), 0) FROM DispatchLists WITH (UPDLOCK, HOLDLOCK);

    BEGIN TRANSACTION;
    BEGIN TRY

--- 插入表体明细 (DispatchLists) ---
${body}

    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH;
END;`;
}

// 生成所有 SQL 文件 —— 复刻 DispatchProcessor._generate_sql_files
export function generateAll(
  invoiceGroups: Map<string, DataRow[]>,
  accId: string,
  year: string,
  log?: (msg: string) => void,
): Map<string, string> {
  const files = new Map<string, string>();
  let currentIdlsid = 1;

  const keys = [...invoiceGroups.keys()].sort();
  for (const invCode of keys) {
    const rows = invoiceGroups.get(invCode)!;
    const rowCount = rows.length;
    log?.(`处理单号: ${invCode}, 明细数: ${rowCount}`);

    if (rowCount <= MAX_ROWS_PER_FILE) {
      files.set(`${invCode}.sql`, generateSingleInvoice(invCode, currentIdlsid, rows, accId, year));
      currentIdlsid += rowCount;
    } else {
      const numParts = Math.ceil(rowCount / MAX_ROWS_PER_FILE);
      log?.(`  -> 拆分为 ${numParts} 个文件`);
      for (let partIdx = 0; partIdx < numParts; partIdx++) {
        const partRows = rows.slice(partIdx * MAX_ROWS_PER_FILE, Math.min((partIdx + 1) * MAX_ROWS_PER_FILE, rowCount));
        const partNum = partIdx + 1;
        if (partNum === 1) {
          files.set(
            `${invCode}_${partNum}.sql`,
            generateFirstPart(invCode, currentIdlsid, partRows, numParts, accId, year),
          );
        } else {
          files.set(
            `${invCode}_${partNum}.sql`,
            generateBodyPart(invCode, partNum, numParts, partRows, partIdx * MAX_ROWS_PER_FILE + 1),
          );
        }
      }
      currentIdlsid += rowCount;
    }
  }
  return files;
}
