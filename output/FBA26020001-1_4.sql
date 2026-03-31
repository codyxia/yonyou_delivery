/* ========================================
   用友U8发货单SQL - 明细分片
   单据号: FBA26020001-1
   本片明细: 1000 条
   起始行号: 3001
   生成时间: 2026-03-31 13:19:29
   ======================================== */

-- 此为第 4 部分，共 5 部分

DECLARE @DLID INT;
DECLARE @iDLsID INT;
DECLARE @BillCode NVARCHAR(30) = N'FBA26020001-1';

-- 通过单据号获取已创建的表头ID
SELECT @DLID = DLID FROM DispatchList WITH (NOLOCK) WHERE cDLCode = @BillCode;

IF @DLID IS NOT NULL
BEGIN
    -- 获取当前最大明细ID
    SELECT @iDLsID = ISNULL(MAX(iDLsID), 0) FROM DispatchLists WITH (UPDLOCK, HOLDLOCK);

    BEGIN TRANSACTION;
    BEGIN TRY

--- 插入表体明细 (DispatchLists) ---
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 1), N'01', N'02000754', 1,
    71.54, 71.54, 71.54, 0, 71.54,
    71.54, 71.54, 71.54, 0,
    NULL, NULL, NULL, 0, 1, 3001
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 2), N'01', N'01000615', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3002
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 3), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 3003
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 4), N'01', N'01001525', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3004
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 5), N'01', N'01001865', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 3005
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 6), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 3006
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 7), N'01', N'01001824', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 3007
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 8), N'01', N'01001824', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 3008
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 9), N'01', N'02000758', 1,
    109.79, 109.79, 109.79, 0, 109.79,
    109.79, 109.79, 109.79, 0,
    NULL, NULL, NULL, 0, 1, 3009
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 10), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3010
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 11), N'01', N'01002205', 2,
    48.99, 48.99, 97.98, 0, 97.98,
    48.99, 97.98, 97.98, 0,
    NULL, NULL, NULL, 0, 1, 3011
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 12), N'01', N'01001073', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3012
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 13), N'01', N'01001532', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3013
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 14), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3014
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 15), N'01', N'01001224', 3,
    23.75, 23.75, 71.25, 0, 71.25,
    23.75, 71.25, 71.25, 0,
    NULL, NULL, NULL, 0, 1, 3015
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 16), N'01', N'01002365', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3016
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 17), N'01', N'03000176', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 3017
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 18), N'01', N'01000643', 2,
    46.99, 46.99, 93.98, 0, 93.98,
    46.99, 93.98, 93.98, 0,
    NULL, NULL, NULL, 0, 1, 3018
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 19), N'01', N'01002224', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3019
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 20), N'01', N'01000518', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3020
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 21), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3021
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 22), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3022
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 23), N'01', N'01001742', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3023
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 24), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3024
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 25), N'01', N'01000818', 1,
    28.16, 28.16, 28.16, 0, 28.16,
    28.16, 28.16, 28.16, 0,
    NULL, NULL, NULL, 0, 1, 3025
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 26), N'01', N'01002262', 1,
    54.99, 54.99, 54.99, 0, 54.99,
    54.99, 54.99, 54.99, 0,
    NULL, NULL, NULL, 0, 1, 3026
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 27), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 3027
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 28), N'01', N'01001824', 2,
    30.59, 30.59, 61.18, 0, 61.18,
    30.59, 61.18, 61.18, 0,
    NULL, NULL, NULL, 0, 1, 3028
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 29), N'01', N'01000366', 2,
    45.59, 45.59, 91.18, 0, 91.18,
    45.59, 91.18, 91.18, 0,
    NULL, NULL, NULL, 0, 1, 3029
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 30), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3030
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 31), N'01', N'01002343', 1,
    55.09, 55.09, 55.09, 0, 55.09,
    55.09, 55.09, 55.09, 0,
    NULL, NULL, NULL, 0, 1, 3031
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 32), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3032
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 33), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3033
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 34), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3034
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 35), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3035
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 36), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3036
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 37), N'01', N'01001525', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3037
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 38), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3038
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 39), N'01', N'01000616', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 3039
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 40), N'01', N'01001505', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3040
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 41), N'01', N'01001505', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3041
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 42), N'01', N'01001505', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3042
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 43), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3043
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 44), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3044
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 45), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3045
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 46), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3046
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 47), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3047
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 48), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3048
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 49), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 3049
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 50), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3050
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 51), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3051
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 52), N'01', N'01001055', 4,
    29.17, 29.17, 116.68, 0, 116.68,
    29.17, 116.68, 116.68, 0,
    NULL, NULL, NULL, 0, 1, 3052
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 53), N'01', N'01001612', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 3053
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 54), N'01', N'01002342', 1,
    42.49, 42.49, 42.49, 0, 42.49,
    42.49, 42.49, 42.49, 0,
    NULL, NULL, NULL, 0, 1, 3054
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 55), N'01', N'01000217', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3055
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 56), N'01', N'01000439', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3056
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 57), N'01', N'01001567', 2,
    23.74, 23.74, 47.48, 0, 47.48,
    23.74, 47.48, 47.48, 0,
    NULL, NULL, NULL, 0, 1, 3057
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 58), N'01', N'01001113', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3058
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 59), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3059
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 60), N'01', N'01001044', 3,
    24.599999999999998, 24.599999999999998, 73.8, 0, 73.8,
    24.599999999999998, 73.8, 73.8, 0,
    NULL, NULL, NULL, 0, 1, 3060
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 61), N'01', N'01001037', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 3061
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 62), N'01', N'01002443', 1,
    46.54, 46.54, 46.54, 0, 46.54,
    46.54, 46.54, 46.54, 0,
    NULL, NULL, NULL, 0, 1, 3062
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 63), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3063
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 64), N'01', N'01000496', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3064
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 65), N'01', N'01001089', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3065
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 66), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3066
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 67), N'01', N'01001955', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 3067
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 68), N'01', N'01002736', 2,
    43.99, 43.99, 87.98, 0, 87.98,
    43.99, 87.98, 87.98, 0,
    NULL, NULL, NULL, 0, 1, 3068
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 69), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3069
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 70), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3070
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 71), N'01', N'01001178', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 3071
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 72), N'01', N'01001770', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 3072
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 73), N'01', N'01002226', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3073
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 74), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 3074
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 75), N'01', N'02000742', 1,
    59.39, 59.39, 59.39, 0, 59.39,
    59.39, 59.39, 59.39, 0,
    NULL, NULL, NULL, 0, 1, 3075
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 76), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3076
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 77), N'01', N'01000359', 2,
    36.09, 36.09, 72.18, 0, 72.18,
    36.09, 72.18, 72.18, 0,
    NULL, NULL, NULL, 0, 1, 3077
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 78), N'01', N'02000742', 1,
    59.39, 59.39, 59.39, 0, 59.39,
    59.39, 59.39, 59.39, 0,
    NULL, NULL, NULL, 0, 1, 3078
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 79), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3079
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 80), N'01', N'03000085', 1,
    24.79, 24.79, 24.79, 0, 24.79,
    24.79, 24.79, 24.79, 0,
    NULL, NULL, NULL, 0, 1, 3080
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 81), N'01', N'01001612', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 3081
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 82), N'01', N'05000006', 3,
    19.54, 19.54, 58.62, 0, 58.62,
    19.54, 58.62, 58.62, 0,
    NULL, NULL, NULL, 0, 1, 3082
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 83), N'01', N'01000302', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 3083
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 84), N'01', N'01001234', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 3084
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 85), N'01', N'01001231', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 3085
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 86), N'01', N'03000165', 1,
    119.99, 119.99, 119.99, 0, 119.99,
    119.99, 119.99, 119.99, 0,
    NULL, NULL, NULL, 0, 1, 3086
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 87), N'01', N'01001234', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 3087
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 88), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3088
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 89), N'01', N'01001044', 1,
    24.6, 24.6, 24.6, 0, 24.6,
    24.6, 24.6, 24.6, 0,
    NULL, NULL, NULL, 0, 1, 3089
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 90), N'01', N'01001255', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 3090
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 91), N'01', N'01001797', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3091
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 92), N'01', N'01001084', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3092
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 93), N'01', N'01000615', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3093
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 94), N'01', N'01001321', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3094
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 95), N'01', N'01001321', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3095
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 96), N'01', N'05000039', 3,
    26.99, 26.99, 80.97, 0, 80.97,
    26.99, 80.97, 80.97, 0,
    NULL, NULL, NULL, 0, 1, 3096
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 97), N'01', N'05000039', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3097
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 98), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3098
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 99), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 3099
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 100), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3100
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 101), N'01', N'10000001', 1,
    24.68, 24.68, 24.68, 0, 24.68,
    24.68, 24.68, 24.68, 0,
    NULL, NULL, NULL, 0, 1, 3101
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 102), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3102
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 103), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3103
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 104), N'01', N'05000010', 3,
    24.99, 24.99, 74.97, 0, 74.97,
    24.99, 74.97, 74.97, 0,
    NULL, NULL, NULL, 0, 1, 3104
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 105), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3105
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 106), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3106
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 107), N'01', N'03000131', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3107
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 108), N'01', N'01002381', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 3108
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 109), N'01', N'01002381', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3109
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 110), N'01', N'01001906', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 3110
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 111), N'01', N'01000886', 2,
    38.99, 38.99, 77.98, 0, 77.98,
    38.99, 77.98, 77.98, 0,
    NULL, NULL, NULL, 0, 1, 3111
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 112), N'01', N'02000783', 1,
    135.44, 135.44, 135.44, 0, 135.44,
    135.44, 135.44, 135.44, 0,
    NULL, NULL, NULL, 0, 1, 3112
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 113), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3113
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 114), N'01', N'01001866', 1,
    23.79, 23.79, 23.79, 0, 23.79,
    23.79, 23.79, 23.79, 0,
    NULL, NULL, NULL, 0, 1, 3114
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 115), N'01', N'02000699', 1,
    64.99, 64.99, 64.99, 0, 64.99,
    64.99, 64.99, 64.99, 0,
    NULL, NULL, NULL, 0, 1, 3115
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 116), N'01', N'02000715', 1,
    59.39, 59.39, 59.39, 0, 59.39,
    59.39, 59.39, 59.39, 0,
    NULL, NULL, NULL, 0, 1, 3116
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 117), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3117
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 118), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 3118
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 119), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3119
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 120), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3120
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 121), N'01', N'03000311', 1,
    21.79, 21.79, 21.79, 0, 21.79,
    21.79, 21.79, 21.79, 0,
    NULL, NULL, NULL, 0, 1, 3121
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 122), N'01', N'01000602', 3,
    32.99, 32.99, 98.97, 0, 98.97,
    32.99, 98.97, 98.97, 0,
    NULL, NULL, NULL, 0, 1, 3122
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 123), N'01', N'01000179', 2,
    56.99, 56.99, 113.98, 0, 113.98,
    56.99, 113.98, 113.98, 0,
    NULL, NULL, NULL, 0, 1, 3123
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 124), N'01', N'01000219', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3124
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 125), N'01', N'01000219', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3125
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 126), N'01', N'03000054', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3126
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 127), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3127
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 128), N'01', N'01002242', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 3128
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 129), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3129
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 130), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3130
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 131), N'01', N'05000011', 3,
    22.99, 22.99, 68.97, 0, 68.97,
    22.99, 68.97, 68.97, 0,
    NULL, NULL, NULL, 0, 1, 3131
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 132), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3132
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 133), N'01', N'01000025', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 3133
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 134), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 3134
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 135), N'01', N'01001843', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 3135
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 136), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3136
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 137), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 3137
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 138), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3138
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 139), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3139
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 140), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3140
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 141), N'01', N'01001140', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 3141
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 142), N'01', N'03000067', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3142
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 143), N'01', N'01002169', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 3143
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 144), N'01', N'01000873', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 3144
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 145), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 3145
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 146), N'01', N'01001453', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3146
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 147), N'01', N'01001534', 1,
    20.29, 20.29, 20.29, 0, 20.29,
    20.29, 20.29, 20.29, 0,
    NULL, NULL, NULL, 0, 1, 3147
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 148), N'01', N'01000153', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 3148
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 149), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 3149
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 150), N'01', N'01002600', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3150
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 151), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3151
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 152), N'01', N'05000002', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 3152
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 153), N'01', N'01001879', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 3153
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 154), N'01', N'03000311', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3154
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 155), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3155
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 156), N'01', N'01002010', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 3156
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 157), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3157
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 158), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 3158
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 159), N'01', N'01002010', 1,
    26.77, 26.77, 26.77, 0, 26.77,
    26.77, 26.77, 26.77, 0,
    NULL, NULL, NULL, 0, 1, 3159
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 160), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3160
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 161), N'01', N'01000457', 3,
    46.99, 46.99, 140.97, 0, 140.97,
    46.99, 140.97, 140.97, 0,
    NULL, NULL, NULL, 0, 1, 3161
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 162), N'01', N'01001816', 3,
    36.99, 36.99, 110.97, 0, 110.97,
    36.99, 110.97, 110.97, 0,
    NULL, NULL, NULL, 0, 1, 3162
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 163), N'01', N'01001161', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3163
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 164), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3164
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 165), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3165
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 166), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 3166
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 167), N'01', N'01001165', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 3167
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 168), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3168
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 169), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3169
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 170), N'01', N'01000472', 3,
    32.99, 32.99, 98.97, 0, 98.97,
    32.99, 98.97, 98.97, 0,
    NULL, NULL, NULL, 0, 1, 3170
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 171), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3171
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 172), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3172
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 173), N'01', N'01001806', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 3173
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 174), N'01', N'01002425', 1,
    42.49, 42.49, 42.49, 0, 42.49,
    42.49, 42.49, 42.49, 0,
    NULL, NULL, NULL, 0, 1, 3174
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 175), N'01', N'01002425', 1,
    42.49, 42.49, 42.49, 0, 42.49,
    42.49, 42.49, 42.49, 0,
    NULL, NULL, NULL, 0, 1, 3175
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 176), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3176
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 177), N'01', N'01001422', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 3177
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 178), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3178
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 179), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3179
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 180), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3180
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 181), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3181
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 182), N'01', N'01001931', 3,
    34.99, 34.99, 104.97, 0, 104.97,
    34.99, 104.97, 104.97, 0,
    NULL, NULL, NULL, 0, 1, 3182
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 183), N'01', N'01001329', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3183
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 184), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3184
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 185), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3185
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 186), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3186
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 187), N'01', N'05000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3187
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 188), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3188
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 189), N'01', N'01001089', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3189
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 190), N'01', N'01000889', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 3190
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 191), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 3191
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 192), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 3192
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 193), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3193
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 194), N'01', N'03000128', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3194
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 195), N'01', N'01000022', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3195
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 196), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3196
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 197), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3197
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 198), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3198
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 199), N'01', N'01000458', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 3199
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 200), N'01', N'01000456', 2,
    44.99, 44.99, 89.98, 0, 89.98,
    44.99, 89.98, 89.98, 0,
    NULL, NULL, NULL, 0, 1, 3200
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 201), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3201
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 202), N'01', N'01000842', 3,
    23.99, 23.99, 71.97, 0, 71.97,
    23.99, 71.97, 71.97, 0,
    NULL, NULL, NULL, 0, 1, 3202
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 203), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3203
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 204), N'01', N'01001091', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3204
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 205), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 3205
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 206), N'01', N'01002387', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3206
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 207), N'01', N'01001574', 5,
    35.989999999999995, 35.989999999999995, 179.95, 0, 179.95,
    35.989999999999995, 179.95, 179.95, 0,
    NULL, NULL, NULL, 0, 1, 3207
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 208), N'01', N'01001789', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3208
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 209), N'01', N'01001789', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3209
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 210), N'01', N'01000051', 1,
    38.24, 38.24, 38.24, 0, 38.24,
    38.24, 38.24, 38.24, 0,
    NULL, NULL, NULL, 0, 1, 3210
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 211), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3211
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 212), N'01', N'01000439', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3212
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 213), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 3213
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 214), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3214
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 215), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3215
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 216), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3216
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 217), N'01', N'01000785', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3217
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 218), N'01', N'03000167', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3218
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 219), N'01', N'01001564', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 3219
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 220), N'01', N'01001921', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 3220
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 221), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3221
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 222), N'01', N'01000986', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 3222
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 223), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3223
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 224), N'01', N'01001530', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 3224
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 225), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3225
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 226), N'01', N'05000010', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 3226
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 227), N'01', N'03000150', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 3227
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 228), N'01', N'01001273', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3228
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 229), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3229
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 230), N'01', N'01001181', 1,
    28.87, 28.87, 28.87, 0, 28.87,
    28.87, 28.87, 28.87, 0,
    NULL, NULL, NULL, 0, 1, 3230
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 231), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3231
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 232), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3232
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 233), N'01', N'01002238', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3233
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 234), N'01', N'01002214', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3234
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 235), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3235
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 236), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3236
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 237), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3237
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 238), N'01', N'05000006', 2,
    19.54, 19.54, 39.08, 0, 39.08,
    19.54, 39.08, 39.08, 0,
    NULL, NULL, NULL, 0, 1, 3238
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 239), N'01', N'05000006', 2,
    19.54, 19.54, 39.08, 0, 39.08,
    19.54, 39.08, 39.08, 0,
    NULL, NULL, NULL, 0, 1, 3239
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 240), N'01', N'01001564', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3240
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 241), N'01', N'01001878', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3241
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 242), N'01', N'03000094', 1,
    23.55, 23.55, 23.55, 0, 23.55,
    23.55, 23.55, 23.55, 0,
    NULL, NULL, NULL, 0, 1, 3242
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 243), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3243
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 244), N'01', N'01001263', 3,
    24.689999999999998, 24.689999999999998, 74.07, 0, 74.07,
    24.689999999999998, 74.07, 74.07, 0,
    NULL, NULL, NULL, 0, 1, 3244
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 245), N'01', N'01001263', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3245
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 246), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3246
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 247), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3247
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 248), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3248
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 249), N'01', N'01002388', 1,
    37.39, 37.39, 37.39, 0, 37.39,
    37.39, 37.39, 37.39, 0,
    NULL, NULL, NULL, 0, 1, 3249
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 250), N'01', N'01001532', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3250
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 251), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3251
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 252), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3252
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 253), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3253
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 254), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3254
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 255), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3255
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 256), N'01', N'01001607', 1,
    28.25, 28.25, 28.25, 0, 28.25,
    28.25, 28.25, 28.25, 0,
    NULL, NULL, NULL, 0, 1, 3256
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 257), N'01', N'07000006', 1,
    36.8, 36.8, 36.8, 0, 36.8,
    36.8, 36.8, 36.8, 0,
    NULL, NULL, NULL, 0, 1, 3257
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 258), N'01', N'01001574', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 3258
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 259), N'01', N'01000284', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3259
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 260), N'01', N'01000472', 1,
    26.39, 26.39, 26.39, 0, 26.39,
    26.39, 26.39, 26.39, 0,
    NULL, NULL, NULL, 0, 1, 3260
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 261), N'01', N'01001337', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 3261
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 262), N'01', N'01001497', 1,
    22.55, 22.55, 22.55, 0, 22.55,
    22.55, 22.55, 22.55, 0,
    NULL, NULL, NULL, 0, 1, 3262
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 263), N'01', N'14000001', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 3263
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 264), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 3264
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 265), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3265
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 266), N'01', N'01002590', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3266
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 267), N'01', N'01001612', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 3267
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 268), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3268
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 269), N'01', N'01000602', 3,
    32.99, 32.99, 98.97, 0, 98.97,
    32.99, 98.97, 98.97, 0,
    NULL, NULL, NULL, 0, 1, 3269
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 270), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3270
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 271), N'01', N'01001530', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3271
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 272), N'01', N'01002206', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3272
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 273), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3273
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 274), N'01', N'01001826', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3274
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 275), N'01', N'01001826', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3275
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 276), N'01', N'01003313', 1,
    48.29, 48.29, 48.29, 0, 48.29,
    48.29, 48.29, 48.29, 0,
    NULL, NULL, NULL, 0, 1, 3276
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 277), N'01', N'01001842', 2,
    31.67, 31.67, 63.34, 0, 63.34,
    31.67, 63.34, 63.34, 0,
    NULL, NULL, NULL, 0, 1, 3277
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 278), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3278
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 279), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3279
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 280), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3280
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 281), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3281
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 282), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 3282
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 283), N'01', N'01001881', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3283
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 284), N'01', N'05000108', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 3284
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 285), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3285
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 286), N'01', N'01002681', 1,
    17.69, 17.69, 17.69, 0, 17.69,
    17.69, 17.69, 17.69, 0,
    NULL, NULL, NULL, 0, 1, 3286
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 287), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3287
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 288), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 3288
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 289), N'01', N'01000477', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 3289
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 290), N'01', N'07000001', 3,
    27.98, 27.98, 83.94, 0, 83.94,
    27.98, 83.94, 83.94, 0,
    NULL, NULL, NULL, 0, 1, 3290
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 291), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 3291
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 292), N'01', N'05000035', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3292
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 293), N'01', N'01001365', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 3293
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 294), N'01', N'01002868', 1,
    37.09, 37.09, 37.09, 0, 37.09,
    37.09, 37.09, 37.09, 0,
    NULL, NULL, NULL, 0, 1, 3294
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 295), N'01', N'01001219', 3,
    20.56, 20.56, 61.68, 0, 61.68,
    20.56, 61.68, 61.68, 0,
    NULL, NULL, NULL, 0, 1, 3295
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 296), N'01', N'01001234', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 3296
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 297), N'01', N'01002340', 2,
    42.74, 42.74, 85.48, 0, 85.48,
    42.74, 85.48, 85.48, 0,
    NULL, NULL, NULL, 0, 1, 3297
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 298), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 3298
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 299), N'01', N'01001612', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 3299
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 300), N'01', N'01000614', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3300
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 301), N'01', N'01000574', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3301
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 302), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3302
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 303), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3303
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 304), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3304
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 305), N'01', N'01000146', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 3305
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 306), N'01', N'01000146', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 3306
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 307), N'01', N'03000308', 1,
    74.99, 74.99, 74.99, 0, 74.99,
    74.99, 74.99, 74.99, 0,
    NULL, NULL, NULL, 0, 1, 3307
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 308), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3308
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 309), N'01', N'05000014', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 3309
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 310), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3310
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 311), N'01', N'01001506', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 3311
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 312), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3312
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 313), N'01', N'01000815', 1,
    51.99, 51.99, 51.99, 0, 51.99,
    51.99, 51.99, 51.99, 0,
    NULL, NULL, NULL, 0, 1, 3313
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 314), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 3314
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 315), N'01', N'01001381', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3315
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 316), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3316
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 317), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3317
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 318), N'01', N'01001042', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3318
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 319), N'01', N'01001109', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3319
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 320), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3320
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 321), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3321
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 322), N'01', N'01001089', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3322
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 323), N'01', N'01000514', 3,
    25.99, 25.99, 77.97, 0, 77.97,
    25.99, 77.97, 77.97, 0,
    NULL, NULL, NULL, 0, 1, 3323
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 324), N'01', N'01000405', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3324
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 325), N'01', N'01002592', 4,
    22.99, 22.99, 91.96, 0, 91.96,
    22.99, 91.96, 91.96, 0,
    NULL, NULL, NULL, 0, 1, 3325
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 326), N'01', N'01002592', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 3326
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 327), N'01', N'01002247', 1,
    54.99, 54.99, 54.99, 0, 54.99,
    54.99, 54.99, 54.99, 0,
    NULL, NULL, NULL, 0, 1, 3327
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 328), N'01', N'03000117', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3328
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 329), N'01', N'01001711', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 3329
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 330), N'01', N'03000108', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3330
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 331), N'01', N'01001506', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 3331
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 332), N'01', N'03000117', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3332
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 333), N'01', N'01001506', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 3333
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 334), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3334
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 335), N'01', N'01000290', 1,
    56.99, 56.99, 56.99, 0, 56.99,
    56.99, 56.99, 56.99, 0,
    NULL, NULL, NULL, 0, 1, 3335
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 336), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3336
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 337), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3337
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 338), N'01', N'01001707', 1,
    27.06, 27.06, 27.06, 0, 27.06,
    27.06, 27.06, 27.06, 0,
    NULL, NULL, NULL, 0, 1, 3338
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 339), N'01', N'01001707', 1,
    27.06, 27.06, 27.06, 0, 27.06,
    27.06, 27.06, 27.06, 0,
    NULL, NULL, NULL, 0, 1, 3339
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 340), N'01', N'01001707', 1,
    27.06, 27.06, 27.06, 0, 27.06,
    27.06, 27.06, 27.06, 0,
    NULL, NULL, NULL, 0, 1, 3340
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 341), N'01', N'01001454', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 3341
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 342), N'01', N'01001454', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 3342
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 343), N'01', N'05000044', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3343
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 344), N'01', N'01002381', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3344
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 345), N'01', N'05000046', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 3345
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 346), N'01', N'01001337', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3346
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 347), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3347
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 348), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3348
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 349), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3349
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 350), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 3350
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 351), N'01', N'01001503', 3,
    30.39, 30.39, 91.17, 0, 91.17,
    30.39, 91.17, 91.17, 0,
    NULL, NULL, NULL, 0, 1, 3351
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 352), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3352
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 353), N'01', N'03000138', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3353
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 354), N'01', N'01001448', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3354
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 355), N'01', N'01001448', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3355
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 356), N'01', N'03000206', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 3356
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 357), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3357
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 358), N'01', N'03000117', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3358
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 359), N'01', N'03000284', 1,
    74.79, 74.79, 74.79, 0, 74.79,
    74.79, 74.79, 74.79, 0,
    NULL, NULL, NULL, 0, 1, 3359
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 360), N'01', N'01001499', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3360
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 361), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3361
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 362), N'01', N'01001237', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 3362
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 363), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3363
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 364), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3364
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 365), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3365
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 366), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3366
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 367), N'01', N'01001866', 4,
    33.99, 33.99, 135.96, 0, 135.96,
    33.99, 135.96, 135.96, 0,
    NULL, NULL, NULL, 0, 1, 3367
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 368), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3368
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 369), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3369
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 370), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3370
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 371), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3371
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 372), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3372
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 373), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3373
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 374), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 3374
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 375), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3375
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 376), N'01', N'01001505', 1,
    24.85, 24.85, 24.85, 0, 24.85,
    24.85, 24.85, 24.85, 0,
    NULL, NULL, NULL, 0, 1, 3376
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 377), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3377
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 378), N'01', N'01000774', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 3378
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 379), N'01', N'01000863', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 3379
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 380), N'01', N'01000863', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 3380
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 381), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3381
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 382), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3382
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 383), N'01', N'01001227', 1,
    22.71, 22.71, 22.71, 0, 22.71,
    22.71, 22.71, 22.71, 0,
    NULL, NULL, NULL, 0, 1, 3383
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 384), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3384
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 385), N'01', N'01001840', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 3385
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 386), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3386
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 387), N'01', N'01001091', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 3387
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 388), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3388
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 389), N'01', N'01001556', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3389
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 390), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3390
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 391), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3391
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 392), N'01', N'05000105', 1,
    19.37, 19.37, 19.37, 0, 19.37,
    19.37, 19.37, 19.37, 0,
    NULL, NULL, NULL, 0, 1, 3392
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 393), N'01', N'01002247', 1,
    54.99, 54.99, 54.99, 0, 54.99,
    54.99, 54.99, 54.99, 0,
    NULL, NULL, NULL, 0, 1, 3393
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 394), N'01', N'03000328', 1,
    20.99, 20.99, 20.99, 0, 20.99,
    20.99, 20.99, 20.99, 0,
    NULL, NULL, NULL, 0, 1, 3394
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 395), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3395
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 396), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3396
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 397), N'01', N'01000641', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3397
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 398), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3398
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 399), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3399
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 400), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3400
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 401), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3401
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 402), N'01', N'01001568', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3402
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 403), N'01', N'09000023', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3403
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 404), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3404
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 405), N'01', N'01001816', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3405
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 406), N'01', N'01002258', 1,
    36.54, 36.54, 36.54, 0, 36.54,
    36.54, 36.54, 36.54, 0,
    NULL, NULL, NULL, 0, 1, 3406
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 407), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3407
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 408), N'01', N'01001080', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 3408
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 409), N'01', N'01000477', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 3409
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 410), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3410
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 411), N'01', N'01001226', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 3411
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 412), N'01', N'01001107', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3412
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 413), N'01', N'01001107', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3413
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 414), N'01', N'01001107', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3414
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 415), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3415
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 416), N'01', N'01001384', 1,
    25.98, 25.98, 25.98, 0, 25.98,
    25.98, 25.98, 25.98, 0,
    NULL, NULL, NULL, 0, 1, 3416
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 417), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3417
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 418), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3418
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 419), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3419
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 420), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3420
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 421), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3421
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 422), N'01', N'01000120', 2,
    28.79, 28.79, 57.58, 0, 57.58,
    28.79, 57.58, 57.58, 0,
    NULL, NULL, NULL, 0, 1, 3422
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 423), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3423
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 424), N'01', N'03000130', 2,
    15.99, 15.99, 31.98, 0, 31.98,
    15.99, 31.98, 31.98, 0,
    NULL, NULL, NULL, 0, 1, 3424
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 425), N'01', N'03000317', 1,
    8.54, 8.54, 8.54, 0, 8.54,
    8.54, 8.54, 8.54, 0,
    NULL, NULL, NULL, 0, 1, 3425
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 426), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3426
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 427), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3427
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 428), N'01', N'01001452', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3428
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 429), N'01', N'01002282', 1,
    30.47, 30.47, 30.47, 0, 30.47,
    30.47, 30.47, 30.47, 0,
    NULL, NULL, NULL, 0, 1, 3429
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 430), N'01', N'01002363', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3430
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 431), N'01', N'01000326', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3431
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 432), N'01', N'01002352', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 3432
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 433), N'01', N'01001274', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3433
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 434), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3434
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 435), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 3435
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 436), N'01', N'01001564', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3436
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 437), N'01', N'01000177', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 3437
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 438), N'01', N'12000003', 1,
    16.98, 16.98, 16.98, 0, 16.98,
    16.98, 16.98, 16.98, 0,
    NULL, NULL, NULL, 0, 1, 3438
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 439), N'01', N'01001452', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3439
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 440), N'01', N'01000644', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 3440
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 441), N'01', N'01001498', 1,
    21.84, 21.84, 21.84, 0, 21.84,
    21.84, 21.84, 21.84, 0,
    NULL, NULL, NULL, 0, 1, 3441
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 442), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3442
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 443), N'01', N'01002418', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 3443
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 444), N'01', N'01002214', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3444
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 445), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3445
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 446), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 3446
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 447), N'01', N'01000302', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 3447
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 448), N'01', N'01001234', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 3448
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 449), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3449
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 450), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3450
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 451), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 3451
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 452), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3452
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 453), N'01', N'01001460', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 3453
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 454), N'01', N'01001460', 2,
    21.99, 21.99, 43.98, 0, 43.98,
    21.99, 43.98, 43.98, 0,
    NULL, NULL, NULL, 0, 1, 3454
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 455), N'01', N'05000108', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 3455
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 456), N'01', N'01001932', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 3456
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 457), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3457
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 458), N'01', N'01000300', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 3458
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 459), N'01', N'01000498', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 3459
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 460), N'01', N'03000096', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 3460
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 461), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3461
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 462), N'01', N'01001452', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3462
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 463), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3463
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 464), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3464
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 465), N'01', N'01001091', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3465
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 466), N'01', N'01001571', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3466
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 467), N'01', N'01001460', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 3467
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 468), N'01', N'12000004', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 3468
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 469), N'01', N'01001866', 4,
    33.99, 33.99, 135.96, 0, 135.96,
    33.99, 135.96, 135.96, 0,
    NULL, NULL, NULL, 0, 1, 3469
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 470), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3470
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 471), N'01', N'01001802', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 3471
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 472), N'01', N'07000006', 1,
    36.8, 36.8, 36.8, 0, 36.8,
    36.8, 36.8, 36.8, 0,
    NULL, NULL, NULL, 0, 1, 3472
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 473), N'01', N'01001599', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3473
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 474), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 3474
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 475), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3475
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 476), N'01', N'05000014', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 3476
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 477), N'01', N'01001870', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 3477
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 478), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3478
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 479), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3479
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 480), N'01', N'03000054', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3480
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 481), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3481
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 482), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3482
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 483), N'01', N'01002294', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 3483
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 484), N'01', N'01002378', 1,
    47.49, 47.49, 47.49, 0, 47.49,
    47.49, 47.49, 47.49, 0,
    NULL, NULL, NULL, 0, 1, 3484
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 485), N'01', N'05000075', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3485
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 486), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3486
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 487), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3487
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 488), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 3488
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 489), N'01', N'02000766', 1,
    128.99, 128.99, 128.99, 0, 128.99,
    128.99, 128.99, 128.99, 0,
    NULL, NULL, NULL, 0, 1, 3489
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 490), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3490
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 491), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3491
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 492), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3492
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 493), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3493
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 494), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3494
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 495), N'01', N'01001226', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3495
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 496), N'01', N'01002727', 3,
    55.99, 55.99, 167.97, 0, 167.97,
    55.99, 167.97, 167.97, 0,
    NULL, NULL, NULL, 0, 1, 3496
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 497), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 3497
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 498), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3498
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 499), N'01', N'01000020', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3499
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 500), N'01', N'05000075', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3500
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 501), N'01', N'01001231', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 3501
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 502), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3502
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 503), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 3503
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 504), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 3504
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 505), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3505
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 506), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 3506
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 507), N'01', N'03000156', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 3507
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 508), N'01', N'01001866', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3508
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 509), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 3509
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 510), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3510
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 511), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3511
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 512), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3512
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 513), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3513
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 514), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3514
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 515), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3515
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 516), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3516
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 517), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 3517
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 518), N'01', N'01001800', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 3518
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 519), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3519
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 520), N'01', N'01002236', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3520
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 521), N'01', N'01002227', 1,
    99.99, 99.99, 99.99, 0, 99.99,
    99.99, 99.99, 99.99, 0,
    NULL, NULL, NULL, 0, 1, 3521
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 522), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3522
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 523), N'01', N'05000010', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3523
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 524), N'01', N'01001590', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3524
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 525), N'01', N'01001590', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3525
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 526), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3526
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 527), N'01', N'01001278', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 3527
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 528), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3528
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 529), N'01', N'01000266', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3529
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 530), N'01', N'01001774', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 3530
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 531), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 3531
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 532), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 3532
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 533), N'01', N'01001109', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3533
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 534), N'01', N'01001143', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3534
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 535), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3535
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 536), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3536
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 537), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3537
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 538), N'01', N'01001773', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3538
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 539), N'01', N'01001773', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3539
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 540), N'01', N'01001564', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3540
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 541), N'01', N'01001598', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3541
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 542), N'01', N'01001906', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 3542
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 543), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3543
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 544), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3544
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 545), N'01', N'01002374', 1,
    39.89, 39.89, 39.89, 0, 39.89,
    39.89, 39.89, 39.89, 0,
    NULL, NULL, NULL, 0, 1, 3545
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 546), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3546
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 547), N'01', N'01001533', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 3547
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 548), N'01', N'01000769', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3548
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 549), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 3549
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 550), N'01', N'01001530', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3550
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 551), N'01', N'05000003', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 3551
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 552), N'01', N'05000003', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 3552
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 553), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3553
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 554), N'01', N'01000439', 4,
    35.99, 35.99, 143.96, 0, 143.96,
    35.99, 143.96, 143.96, 0,
    NULL, NULL, NULL, 0, 1, 3554
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 555), N'01', N'03000086', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3555
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 556), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3556
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 557), N'01', N'05000075', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3557
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 558), N'01', N'05000075', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3558
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 559), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 3559
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 560), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 3560
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 561), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3561
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 562), N'01', N'01000439', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3562
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 563), N'01', N'09000021', 1,
    72.99, 72.99, 72.99, 0, 72.99,
    72.99, 72.99, 72.99, 0,
    NULL, NULL, NULL, 0, 1, 3563
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 564), N'01', N'01001533', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 3564
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 565), N'01', N'03000198', 1,
    115.99, 115.99, 115.99, 0, 115.99,
    115.99, 115.99, 115.99, 0,
    NULL, NULL, NULL, 0, 1, 3565
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 566), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3566
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 567), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3567
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 568), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3568
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 569), N'01', N'03000087', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 3569
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 570), N'01', N'01001274', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3570
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 571), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3571
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 572), N'01', N'01000613', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 3572
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 573), N'01', N'05000077', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3573
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 574), N'01', N'05000077', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3574
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 575), N'01', N'01001503', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3575
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 576), N'01', N'05000077', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3576
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 577), N'01', N'01001151', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 3577
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 578), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3578
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 579), N'01', N'01000220', 1,
    47.49, 47.49, 47.49, 0, 47.49,
    47.49, 47.49, 47.49, 0,
    NULL, NULL, NULL, 0, 1, 3579
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 580), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3580
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 581), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3581
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 582), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3582
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 583), N'01', N'01002397', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 3583
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 584), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3584
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 585), N'01', N'01000618', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3585
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 586), N'01', N'01001048', 2,
    23.74, 23.74, 47.48, 0, 47.48,
    23.74, 47.48, 47.48, 0,
    NULL, NULL, NULL, 0, 1, 3586
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 587), N'01', N'01001799', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 3587
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 588), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3588
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 589), N'01', N'07000004', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3589
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 590), N'01', N'05000080', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 3590
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 591), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3591
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 592), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 3592
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 593), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3593
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 594), N'01', N'01001816', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3594
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 595), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3595
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 596), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3596
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 597), N'01', N'01001226', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 3597
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 598), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 3598
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 599), N'01', N'01001559', 7,
    20.56, 20.56, 143.92, 0, 143.92,
    20.56, 143.92, 143.92, 0,
    NULL, NULL, NULL, 0, 1, 3599
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 600), N'01', N'01001264', 1,
    22.6, 22.6, 22.6, 0, 22.6,
    22.6, 22.6, 22.6, 0,
    NULL, NULL, NULL, 0, 1, 3600
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 601), N'01', N'01001881', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3601
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 602), N'01', N'01001497', 1,
    22.55, 22.55, 22.55, 0, 22.55,
    22.55, 22.55, 22.55, 0,
    NULL, NULL, NULL, 0, 1, 3602
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 603), N'01', N'01001037', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 3603
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 604), N'01', N'01002592', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 3604
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 605), N'01', N'03000202', 2,
    15.99, 15.99, 31.98, 0, 31.98,
    15.99, 31.98, 31.98, 0,
    NULL, NULL, NULL, 0, 1, 3605
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 606), N'01', N'01001117', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3606
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 607), N'01', N'03000158', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 3607
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 608), N'01', N'01001089', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3608
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 609), N'01', N'01001073', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3609
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 610), N'01', N'01001073', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3610
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 611), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3611
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 612), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3612
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 613), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3613
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 614), N'01', N'01000543', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 3614
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 615), N'01', N'01000573', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 3615
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 616), N'01', N'05000010', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3616
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 617), N'01', N'01001323', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3617
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 618), N'01', N'01001499', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3618
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 619), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3619
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 620), N'01', N'01001237', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3620
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 621), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3621
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 622), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3622
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 623), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3623
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 624), N'01', N'01000228', 3,
    37.99, 37.99, 113.97, 0, 113.97,
    37.99, 113.97, 113.97, 0,
    NULL, NULL, NULL, 0, 1, 3624
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 625), N'01', N'01000613', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3625
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 626), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3626
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 627), N'01', N'01001499', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3627
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 628), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3628
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 629), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3629
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 630), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3630
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 631), N'01', N'01001318', 1,
    26.16, 26.16, 26.16, 0, 26.16,
    26.16, 26.16, 26.16, 0,
    NULL, NULL, NULL, 0, 1, 3631
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 632), N'01', N'05000105', 2,
    19.37, 19.37, 38.74, 0, 38.74,
    19.37, 38.74, 38.74, 0,
    NULL, NULL, NULL, 0, 1, 3632
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 633), N'01', N'01001201', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3633
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 634), N'01', N'01000870', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 3634
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 635), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 3635
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 636), N'01', N'01001339', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 3636
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 637), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 3637
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 638), N'01', N'01000517', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3638
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 639), N'01', N'01001289', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3639
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 640), N'01', N'01001184', 6,
    21.42, 21.42, 128.52, 0, 128.52,
    21.42, 128.52, 128.52, 0,
    NULL, NULL, NULL, 0, 1, 3640
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 641), N'01', N'01001421', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 3641
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 642), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3642
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 643), N'01', N'03000086', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3643
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 644), N'01', N'01001530', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 3644
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 645), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3645
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 646), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 3646
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 647), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3647
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 648), N'01', N'01001530', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 3648
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 649), N'01', N'01000878', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 3649
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 650), N'01', N'01001499', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3650
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 651), N'01', N'01001509', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3651
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 652), N'01', N'01001761', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3652
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 653), N'01', N'01001186', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3653
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 654), N'01', N'01001990', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3654
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 655), N'01', N'01002306', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3655
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 656), N'01', N'05000006', 2,
    19.54, 19.54, 39.08, 0, 39.08,
    19.54, 39.08, 39.08, 0,
    NULL, NULL, NULL, 0, 1, 3656
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 657), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 3657
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 658), N'01', N'01002356', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 3658
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 659), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3659
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 660), N'01', N'01000021', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 3660
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 661), N'01', N'01001081', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3661
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 662), N'01', N'01000037', 1,
    24.21, 24.21, 24.21, 0, 24.21,
    24.21, 24.21, 24.21, 0,
    NULL, NULL, NULL, 0, 1, 3662
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 663), N'01', N'05000042', 2,
    23.99, 23.99, 47.98, 0, 47.98,
    23.99, 47.98, 47.98, 0,
    NULL, NULL, NULL, 0, 1, 3663
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 664), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3664
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 665), N'01', N'01001421', 2,
    23.74, 23.74, 47.48, 0, 47.48,
    23.74, 47.48, 47.48, 0,
    NULL, NULL, NULL, 0, 1, 3665
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 666), N'01', N'01001139', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3666
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 667), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3667
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 668), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3668
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 669), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3669
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 670), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3670
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 671), N'01', N'02000763', 1,
    114.74, 114.74, 114.74, 0, 114.74,
    114.74, 114.74, 114.74, 0,
    NULL, NULL, NULL, 0, 1, 3671
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 672), N'01', N'01001290', 1,
    20.29, 20.29, 20.29, 0, 20.29,
    20.29, 20.29, 20.29, 0,
    NULL, NULL, NULL, 0, 1, 3672
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 673), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 3673
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 674), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3674
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 675), N'01', N'01001991', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 3675
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 676), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3676
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 677), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3677
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 678), N'01', N'01002193', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 3678
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 679), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3679
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 680), N'01', N'03000155', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3680
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 681), N'01', N'01000516', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3681
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 682), N'01', N'01000643', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3682
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 683), N'01', N'03000140', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3683
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 684), N'01', N'01001486', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 3684
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 685), N'01', N'01000439', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3685
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 686), N'01', N'01001367', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3686
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 687), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3687
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 688), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3688
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 689), N'01', N'01000438', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 3689
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 690), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3690
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 691), N'01', N'01002868', 1,
    52.99, 52.99, 52.99, 0, 52.99,
    52.99, 52.99, 52.99, 0,
    NULL, NULL, NULL, 0, 1, 3691
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 692), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3692
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 693), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3693
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 694), N'01', N'07000007', 1,
    27.96, 27.96, 27.96, 0, 27.96,
    27.96, 27.96, 27.96, 0,
    NULL, NULL, NULL, 0, 1, 3694
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 695), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3695
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 696), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 3696
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 697), N'01', N'03000199', 1,
    159.99, 159.99, 159.99, 0, 159.99,
    159.99, 159.99, 159.99, 0,
    NULL, NULL, NULL, 0, 1, 3697
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 698), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 3698
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 699), N'01', N'01000531', 1,
    58.99, 58.99, 58.99, 0, 58.99,
    58.99, 58.99, 58.99, 0,
    NULL, NULL, NULL, 0, 1, 3699
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 700), N'01', N'02000735', 1,
    45.89, 45.89, 45.89, 0, 45.89,
    45.89, 45.89, 45.89, 0,
    NULL, NULL, NULL, 0, 1, 3700
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 701), N'01', N'03000095', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 3701
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 702), N'01', N'02000741', 1,
    58.49, 58.49, 58.49, 0, 58.49,
    58.49, 58.49, 58.49, 0,
    NULL, NULL, NULL, 0, 1, 3702
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 703), N'01', N'01002409', 4,
    39.61, 39.61, 158.44, 0, 158.44,
    39.61, 158.44, 158.44, 0,
    NULL, NULL, NULL, 0, 1, 3703
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 704), N'01', N'01000498', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 3704
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 705), N'01', N'01001787', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 3705
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 706), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 3706
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 707), N'01', N'10000001', 1,
    24.68, 24.68, 24.68, 0, 24.68,
    24.68, 24.68, 24.68, 0,
    NULL, NULL, NULL, 0, 1, 3707
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 708), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3708
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 709), N'01', N'03000130', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 3709
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 710), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3710
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 711), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3711
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 712), N'01', N'02000783', 1,
    135.44, 135.44, 135.44, 0, 135.44,
    135.44, 135.44, 135.44, 0,
    NULL, NULL, NULL, 0, 1, 3712
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 713), N'01', N'01001338', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3713
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 714), N'01', N'01002638', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 3714
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 715), N'01', N'02000783', 1,
    135.44, 135.44, 135.44, 0, 135.44,
    135.44, 135.44, 135.44, 0,
    NULL, NULL, NULL, 0, 1, 3715
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 716), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3716
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 717), N'01', N'02000783', 1,
    135.44, 135.44, 135.44, 0, 135.44,
    135.44, 135.44, 135.44, 0,
    NULL, NULL, NULL, 0, 1, 3717
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 718), N'01', N'01000515', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3718
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 719), N'01', N'01001028', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3719
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 720), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 3720
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 721), N'01', N'01000495', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3721
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 722), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3722
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 723), N'01', N'01001134', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3723
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 724), N'01', N'01001590', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3724
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 725), N'01', N'01001598', 3,
    26.59, 26.59, 79.77, 0, 79.77,
    26.59, 79.77, 79.77, 0,
    NULL, NULL, NULL, 0, 1, 3725
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 726), N'01', N'01001384', 1,
    25.98, 25.98, 25.98, 0, 25.98,
    25.98, 25.98, 25.98, 0,
    NULL, NULL, NULL, 0, 1, 3726
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 727), N'01', N'02000741', 1,
    58.49, 58.49, 58.49, 0, 58.49,
    58.49, 58.49, 58.49, 0,
    NULL, NULL, NULL, 0, 1, 3727
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 728), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3728
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 729), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 3729
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 730), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3730
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 731), N'01', N'02000753', 1,
    70.64, 70.64, 70.64, 0, 70.64,
    70.64, 70.64, 70.64, 0,
    NULL, NULL, NULL, 0, 1, 3731
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 732), N'01', N'01001399', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3732
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 733), N'01', N'01001399', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3733
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 734), N'01', N'01000615', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3734
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 735), N'01', N'03000206', 2,
    9.99, 9.99, 19.98, 0, 19.98,
    9.99, 19.98, 19.98, 0,
    NULL, NULL, NULL, 0, 1, 3735
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 736), N'01', N'03000206', 2,
    9.99, 9.99, 19.98, 0, 19.98,
    9.99, 19.98, 19.98, 0,
    NULL, NULL, NULL, 0, 1, 3736
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 737), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3737
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 738), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 3738
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 739), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3739
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 740), N'01', N'05000074', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 3740
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 741), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3741
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 742), N'01', N'08000004', 1,
    16.14, 16.14, 16.14, 0, 16.14,
    16.14, 16.14, 16.14, 0,
    NULL, NULL, NULL, 0, 1, 3742
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 743), N'01', N'01001553', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 3743
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 744), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3744
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 745), N'01', N'01001994', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3745
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 746), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3746
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 747), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3747
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 748), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3748
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 749), N'01', N'01002236', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3749
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 750), N'01', N'01000031', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 3750
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 751), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 3751
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 752), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3752
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 753), N'01', N'01001567', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 3753
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 754), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3754
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 755), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3755
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 756), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3756
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 757), N'01', N'01001711', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 3757
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 758), N'01', N'03000127', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3758
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 759), N'01', N'01001330', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3759
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 760), N'01', N'01001331', 1,
    25.09, 25.09, 25.09, 0, 25.09,
    25.09, 25.09, 25.09, 0,
    NULL, NULL, NULL, 0, 1, 3760
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 761), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3761
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 762), N'01', N'01001454', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 3762
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 763), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3763
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 764), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3764
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 765), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3765
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 766), N'01', N'05000030', 1,
    17.99, 17.99, 17.99, 0, 17.99,
    17.99, 17.99, 17.99, 0,
    NULL, NULL, NULL, 0, 1, 3766
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 767), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 3767
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 768), N'01', N'03000173', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3768
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 769), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 3769
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 770), N'01', N'01001109', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 3770
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 771), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3771
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 772), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3772
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 773), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3773
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 774), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3774
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 775), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3775
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 776), N'01', N'01001696', 1,
    28.41, 28.41, 28.41, 0, 28.41,
    28.41, 28.41, 28.41, 0,
    NULL, NULL, NULL, 0, 1, 3776
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 777), N'01', N'12000006', 1,
    32.98, 32.98, 32.98, 0, 32.98,
    32.98, 32.98, 32.98, 0,
    NULL, NULL, NULL, 0, 1, 3777
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 778), N'01', N'01001805', 4,
    33.99, 33.99, 135.96, 0, 135.96,
    33.99, 135.96, 135.96, 0,
    NULL, NULL, NULL, 0, 1, 3778
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 779), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3779
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 780), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3780
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 781), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3781
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 782), N'01', N'01001564', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3782
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 783), N'01', N'01001562', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3783
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 784), N'01', N'01001562', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3784
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 785), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 3785
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 786), N'01', N'01001505', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3786
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 787), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3787
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 788), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3788
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 789), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 3789
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 790), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3790
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 791), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3791
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 792), N'01', N'01002649', 2,
    49.99, 49.99, 99.98, 0, 99.98,
    49.99, 99.98, 99.98, 0,
    NULL, NULL, NULL, 0, 1, 3792
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 793), N'01', N'05000038', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 3793
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 794), N'01', N'01002377', 2,
    47.99, 47.99, 95.98, 0, 95.98,
    47.99, 95.98, 95.98, 0,
    NULL, NULL, NULL, 0, 1, 3794
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 795), N'01', N'01001313', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 3795
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 796), N'01', N'01001502', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 3796
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 797), N'01', N'01001502', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 3797
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 798), N'01', N'01001421', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 3798
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 799), N'01', N'01000577', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3799
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 800), N'01', N'01000586', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3800
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 801), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3801
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 802), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3802
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 803), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3803
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 804), N'01', N'01000575', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3804
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 805), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 3805
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 806), N'01', N'01002409', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 3806
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 807), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3807
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 808), N'01', N'01000607', 2,
    43.99, 43.99, 87.98, 0, 87.98,
    43.99, 87.98, 87.98, 0,
    NULL, NULL, NULL, 0, 1, 3808
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 809), N'01', N'01001930', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 3809
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 810), N'01', N'01000029', 2,
    36.09, 36.09, 72.18, 0, 72.18,
    36.09, 72.18, 72.18, 0,
    NULL, NULL, NULL, 0, 1, 3810
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 811), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 3811
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 812), N'01', N'01001568', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 3812
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 813), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3813
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 814), N'01', N'01002218', 1,
    67.99, 67.99, 67.99, 0, 67.99,
    67.99, 67.99, 67.99, 0,
    NULL, NULL, NULL, 0, 1, 3814
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 815), N'01', N'01001076', 2,
    28.99, 28.99, 57.98, 0, 57.98,
    28.99, 57.98, 57.98, 0,
    NULL, NULL, NULL, 0, 1, 3815
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 816), N'01', N'03000205', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 3816
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 817), N'01', N'01001506', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 3817
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 818), N'01', N'01001346', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3818
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 819), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3819
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 820), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3820
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 821), N'01', N'01002339', 2,
    42.99, 42.99, 85.98, 0, 85.98,
    42.99, 85.98, 85.98, 0,
    NULL, NULL, NULL, 0, 1, 3821
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 822), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3822
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 823), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 3823
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 824), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3824
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 825), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3825
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 826), N'01', N'01000641', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3826
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 827), N'01', N'01001931', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 3827
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 828), N'01', N'01000300', 2,
    33.24, 33.24, 66.48, 0, 66.48,
    33.24, 66.48, 66.48, 0,
    NULL, NULL, NULL, 0, 1, 3828
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 829), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3829
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 830), N'01', N'03000198', 1,
    115.99, 115.99, 115.99, 0, 115.99,
    115.99, 115.99, 115.99, 0,
    NULL, NULL, NULL, 0, 1, 3830
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 831), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 3831
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 832), N'01', N'01001571', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 3832
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 833), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3833
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 834), N'01', N'01000437', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 3834
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 835), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3835
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 836), N'01', N'01002631', 1,
    51.99, 51.99, 51.99, 0, 51.99,
    51.99, 51.99, 51.99, 0,
    NULL, NULL, NULL, 0, 1, 3836
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 837), N'01', N'01000816', 1,
    29.48, 29.48, 29.48, 0, 29.48,
    29.48, 29.48, 29.48, 0,
    NULL, NULL, NULL, 0, 1, 3837
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 838), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3838
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 839), N'01', N'01000518', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3839
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 840), N'01', N'01000217', 2,
    39.99, 39.99, 79.98, 0, 79.98,
    39.99, 79.98, 79.98, 0,
    NULL, NULL, NULL, 0, 1, 3840
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 841), N'01', N'01002212', 3,
    42.99, 42.99, 128.97, 0, 128.97,
    42.99, 128.97, 128.97, 0,
    NULL, NULL, NULL, 0, 1, 3841
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 842), N'01', N'01001192', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 3842
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 843), N'01', N'05000112', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 3843
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 844), N'01', N'01000587', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3844
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 845), N'01', N'05000030', 1,
    17.99, 17.99, 17.99, 0, 17.99,
    17.99, 17.99, 17.99, 0,
    NULL, NULL, NULL, 0, 1, 3845
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 846), N'01', N'03000054', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3846
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 847), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3847
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 848), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3848
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 849), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3849
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 850), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3850
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 851), N'01', N'01001319', 1,
    26.97, 26.97, 26.97, 0, 26.97,
    26.97, 26.97, 26.97, 0,
    NULL, NULL, NULL, 0, 1, 3851
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 852), N'01', N'01001091', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3852
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 853), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3853
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 854), N'01', N'01000233', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 3854
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 855), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3855
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 856), N'01', N'01001086', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 3856
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 857), N'01', N'01001456', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3857
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 858), N'01', N'01001866', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3858
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 859), N'01', N'01001565', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 3859
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 860), N'01', N'01001089', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 3860
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 861), N'01', N'01001748', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 3861
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 862), N'01', N'01001340', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 3862
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 863), N'01', N'01001748', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 3863
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 864), N'01', N'07000004', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3864
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 865), N'01', N'07000004', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3865
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 866), N'01', N'01001167', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 3866
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 867), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 3867
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 868), N'01', N'01001880', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 3868
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 869), N'01', N'07000004', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3869
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 870), N'01', N'07000004', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3870
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 871), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3871
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 872), N'01', N'01001815', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 3872
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 873), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3873
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 874), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 3874
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 875), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3875
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 876), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3876
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 877), N'01', N'12000002', 1,
    16.98, 16.98, 16.98, 0, 16.98,
    16.98, 16.98, 16.98, 0,
    NULL, NULL, NULL, 0, 1, 3877
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 878), N'01', N'01001383', 6,
    28.28, 28.28, 169.68, 0, 169.68,
    28.28, 169.68, 169.68, 0,
    NULL, NULL, NULL, 0, 1, 3878
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 879), N'01', N'01002306', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3879
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 880), N'01', N'01002306', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3880
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 881), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3881
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 882), N'01', N'01000030', 1,
    41.79, 41.79, 41.79, 0, 41.79,
    41.79, 41.79, 41.79, 0,
    NULL, NULL, NULL, 0, 1, 3882
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 883), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3883
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 884), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 3884
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 885), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3885
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 886), N'01', N'03000089', 1,
    109.99, 109.99, 109.99, 0, 109.99,
    109.99, 109.99, 109.99, 0,
    NULL, NULL, NULL, 0, 1, 3886
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 887), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3887
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 888), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3888
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 889), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3889
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 890), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3890
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 891), N'01', N'01001191', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3891
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 892), N'01', N'01000516', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 3892
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 893), N'01', N'01000297', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3893
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 894), N'01', N'01000496', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3894
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 895), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3895
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 896), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 3896
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 897), N'01', N'05000100', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3897
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 898), N'01', N'05000100', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 3898
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 899), N'01', N'05000072', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3899
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 900), N'01', N'01001593', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 3900
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 901), N'01', N'01002680', 3,
    15.67, 15.67, 47.01, 0, 47.01,
    15.67, 47.01, 47.01, 0,
    NULL, NULL, NULL, 0, 1, 3901
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 902), N'01', N'01001593', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 3902
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 903), N'01', N'03000118', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3903
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 904), N'01', N'01000437', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3904
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 905), N'01', N'01001326', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 3905
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 906), N'01', N'01001190', 4,
    31.34, 31.34, 125.36, 0, 125.36,
    31.34, 125.36, 125.36, 0,
    NULL, NULL, NULL, 0, 1, 3906
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 907), N'01', N'03000311', 1,
    21.79, 21.79, 21.79, 0, 21.79,
    21.79, 21.79, 21.79, 0,
    NULL, NULL, NULL, 0, 1, 3907
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 908), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3908
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 909), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 3909
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 910), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3910
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 911), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3911
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 912), N'01', N'01001379', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 3912
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 913), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 3913
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 914), N'01', N'05000006', 2,
    22.98, 22.98, 45.96, 0, 45.96,
    22.98, 45.96, 45.96, 0,
    NULL, NULL, NULL, 0, 1, 3914
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 915), N'01', N'01001774', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3915
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 916), N'01', N'01001774', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3916
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 917), N'01', N'01002206', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3917
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 918), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3918
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 919), N'01', N'01001330', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3919
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 920), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3920
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 921), N'01', N'01000266', 2,
    28.51, 28.51, 57.02, 0, 57.02,
    28.51, 57.02, 57.02, 0,
    NULL, NULL, NULL, 0, 1, 3921
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 922), N'01', N'14000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3922
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 923), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3923
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 924), N'01', N'01002631', 1,
    51.99, 51.99, 51.99, 0, 51.99,
    51.99, 51.99, 51.99, 0,
    NULL, NULL, NULL, 0, 1, 3924
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 925), N'01', N'01001774', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3925
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 926), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 3926
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 927), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3927
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 928), N'01', N'01001091', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3928
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 929), N'01', N'01001822', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3929
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 930), N'01', N'01001822', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 3930
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 931), N'01', N'01000518', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3931
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 932), N'01', N'01001555', 3,
    24.349999999999998, 24.349999999999998, 73.05, 0, 73.05,
    24.349999999999998, 73.05, 73.05, 0,
    NULL, NULL, NULL, 0, 1, 3932
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 933), N'01', N'01001292', 4,
    33.99, 33.99, 135.96, 0, 135.96,
    33.99, 135.96, 135.96, 0,
    NULL, NULL, NULL, 0, 1, 3933
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 934), N'01', N'01000641', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 3934
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 935), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3935
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 936), N'01', N'01002442', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 3936
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 937), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3937
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 938), N'01', N'01002235', 1,
    38.94, 38.94, 38.94, 0, 38.94,
    38.94, 38.94, 38.94, 0,
    NULL, NULL, NULL, 0, 1, 3938
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 939), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3939
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 940), N'01', N'01001802', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 3940
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 941), N'01', N'01001042', 1,
    16.23, 16.23, 16.23, 0, 16.23,
    16.23, 16.23, 16.23, 0,
    NULL, NULL, NULL, 0, 1, 3941
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 942), N'01', N'01001154', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 3942
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 943), N'01', N'01001376', 1,
    22.55, 22.55, 22.55, 0, 22.55,
    22.55, 22.55, 22.55, 0,
    NULL, NULL, NULL, 0, 1, 3943
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 944), N'01', N'01001486', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 3944
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 945), N'01', N'05000003', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 3945
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 946), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 3946
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 947), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3947
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 948), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3948
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 949), N'01', N'01001186', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 3949
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 950), N'01', N'03000174', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 3950
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 951), N'01', N'01002410', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3951
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 952), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3952
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 953), N'01', N'01000176', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 3953
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 954), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 3954
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 955), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3955
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 956), N'01', N'05000001', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3956
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 957), N'01', N'03000160', 1,
    115.99, 115.99, 115.99, 0, 115.99,
    115.99, 115.99, 115.99, 0,
    NULL, NULL, NULL, 0, 1, 3957
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 958), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3958
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 959), N'01', N'01001816', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3959
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 960), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3960
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 961), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 3961
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 962), N'01', N'01001048', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 3962
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 963), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 3963
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 964), N'01', N'01001193', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 3964
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 965), N'01', N'01001193', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 3965
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 966), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 3966
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 967), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 3967
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 968), N'01', N'01000587', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 3968
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 969), N'01', N'01001574', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 3969
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 970), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 3970
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 971), N'01', N'01001774', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 3971
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 972), N'01', N'01001042', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3972
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 973), N'01', N'01001526', 1,
    22.56, 22.56, 22.56, 0, 22.56,
    22.56, 22.56, 22.56, 0,
    NULL, NULL, NULL, 0, 1, 3973
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 974), N'01', N'01001526', 8,
    22.56, 22.56, 180.48, 0, 180.48,
    22.56, 180.48, 180.48, 0,
    NULL, NULL, NULL, 0, 1, 3974
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 975), N'01', N'03000087', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 3975
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 976), N'01', N'05000112', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3976
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 977), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 3977
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 978), N'01', N'05000006', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 3978
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 979), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3979
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 980), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 3980
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 981), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3981
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 982), N'01', N'01001383', 1,
    28.28, 28.28, 28.28, 0, 28.28,
    28.28, 28.28, 28.28, 0,
    NULL, NULL, NULL, 0, 1, 3982
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 983), N'01', N'01001773', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 3983
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 984), N'01', N'03000138', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 3984
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 985), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 3985
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 986), N'01', N'01000575', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3986
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 987), N'01', N'01000359', 2,
    36.09, 36.09, 72.18, 0, 72.18,
    36.09, 72.18, 72.18, 0,
    NULL, NULL, NULL, 0, 1, 3987
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 988), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 3988
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 989), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3989
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 990), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 3990
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 991), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3991
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 992), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3992
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 993), N'01', N'05000011', 3,
    22.99, 22.99, 68.97, 0, 68.97,
    22.99, 68.97, 68.97, 0,
    NULL, NULL, NULL, 0, 1, 3993
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 994), N'01', N'05000011', 4,
    22.99, 22.99, 91.96, 0, 91.96,
    22.99, 91.96, 91.96, 0,
    NULL, NULL, NULL, 0, 1, 3994
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 995), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 3995
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 996), N'01', N'05000003', 4,
    21.99, 21.99, 87.96, 0, 87.96,
    21.99, 87.96, 87.96, 0,
    NULL, NULL, NULL, 0, 1, 3996
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 997), N'01', N'05000003', 5,
    21.990000000000002, 21.990000000000002, 109.95, 0, 109.95,
    21.990000000000002, 109.95, 109.95, 0,
    NULL, NULL, NULL, 0, 1, 3997
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 998), N'01', N'01001526', 1,
    22.56, 22.56, 22.56, 0, 22.56,
    22.56, 22.56, 22.56, 0,
    NULL, NULL, NULL, 0, 1, 3998
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 999), N'01', N'01001526', 1,
    22.56, 22.56, 22.56, 0, 22.56,
    22.56, 22.56, 22.56, 0,
    NULL, NULL, NULL, 0, 1, 3999
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 1000), N'01', N'01001526', 2,
    22.56, 22.56, 45.12, 0, 45.12,
    22.56, 45.12, 45.12, 0,
    NULL, NULL, NULL, 0, 1, 4000
);

    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH;
END;