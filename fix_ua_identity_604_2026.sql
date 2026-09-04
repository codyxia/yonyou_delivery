/* ==========================================================================
   用友U8 发货单编号急救修复（账套 604，年度 2026）
   症状：导入报 ix_DispatchLists_iDLsID 重复键（如 1000000415），
         前半句“资源共享冲突（可能单据号重复）”
   原理：直写 SQL 按 MAX() 取号，U8 前台按 ua_identity 取号，两边水位偏离
         即互相占用对方号段。把 ua_identity 对齐到 MAX+1 即可解堵。
   用法：先执行【第一段：只读诊断】，把结果截图发回确认；
         再执行【第二段：修复更新】；最后执行【第三段：复核】。
         全程只动 UFSystem..ua_identity 一行，不碰业务数据。
   ========================================================================== */

-- ======================== 第一段：只读诊断 ========================
SELECT MAX(DLID) AS MaxDLID FROM [UFDATA_604_2026].[dbo].[DispatchList];
SELECT MAX(iDLsID) AS MaxiDLsID FROM [UFDATA_604_2026].[dbo].[DispatchLists];
SELECT cAcc_id, cVouchType, iFatherId, iChildId
FROM [UFSystem].[dbo].[ua_identity]
WHERE cAcc_id = '604' AND cVouchType = 'DISPATCH';

-- 若 iFatherId <= MaxDLID 或 iChildId <= MaxiDLsID，即确认水位落后，继续第二段。
-- 若已存在目标单据（如下查出记录），说明是重复导入，不要重放，先删除或跳过该单：
-- SELECT DLID, cDLCode FROM [UFDATA_604_2026].[dbo].[DispatchList]
--  WHERE cDLCode = N'Target20260801';


-- ======================== 第二段：修复更新 ========================
UPDATE [UFSystem].[dbo].[ua_identity]
SET iFatherId = (SELECT ISNULL(MAX(DLID), 0) + 1
                 FROM [UFDATA_604_2026].[dbo].[DispatchList]),
    iChildId  = (SELECT ISNULL(MAX(iDLsID), 0) + 1
                 FROM [UFDATA_604_2026].[dbo].[DispatchLists])
WHERE cAcc_id = '604' AND cVouchType = 'DISPATCH';


-- ======================== 第三段：复核（期望：前后两行相等） ========================
SELECT (SELECT ISNULL(MAX(DLID), 0) + 1 FROM [UFDATA_604_2026].[dbo].[DispatchList]) AS ExpectFather,
       (SELECT ISNULL(MAX(iDLsID), 0) + 1 FROM [UFDATA_604_2026].[dbo].[DispatchLists]) AS ExpectChild;
SELECT cAcc_id, cVouchType, iFatherId, iChildId
FROM [UFSystem].[dbo].[ua_identity]
WHERE cAcc_id = '604' AND cVouchType = 'DISPATCH';

-- 复核通过后，导入时注意：单会话、按文件名顺序逐个执行，
-- 不要多窗口/多人并发，也不要在业务高峰前台做单时批量导入。
