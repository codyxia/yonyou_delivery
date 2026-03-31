/* ========================================
   用友U8发货单SQL - 明细分片
   单据号: FBA26020001-1
   本片明细: 1000 条
   起始行号: 1001
   生成时间: 2026-03-31 13:19:29
   ======================================== */

-- 此为第 2 部分，共 5 部分

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
    @DLID, (@iDLsID + 0 + 1), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1001
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 2), N'01', N'03000282', 2,
    37.98, 37.98, 75.96, 0, 75.96,
    37.98, 75.96, 75.96, 0,
    NULL, NULL, NULL, 0, 1, 1002
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 3), N'01', N'14000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1003
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 4), N'01', N'01000389', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1004
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 5), N'01', N'01001574', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1005
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 6), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1006
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 7), N'01', N'01001383', 1,
    28.28, 28.28, 28.28, 0, 28.28,
    28.28, 28.28, 28.28, 0,
    NULL, NULL, NULL, 0, 1, 1007
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 8), N'01', N'01002301', 1,
    23.02, 23.02, 23.02, 0, 23.02,
    23.02, 23.02, 23.02, 0,
    NULL, NULL, NULL, 0, 1, 1008
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 9), N'01', N'01000604', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 1009
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
    NULL, NULL, NULL, 0, 1, 1010
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 11), N'01', N'05000081', 2,
    21.99, 21.99, 43.98, 0, 43.98,
    21.99, 43.98, 43.98, 0,
    NULL, NULL, NULL, 0, 1, 1011
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 12), N'01', N'01000605', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1012
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 13), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1013
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 14), N'01', N'05000010', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 1014
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 15), N'01', N'01001230', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 1015
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 16), N'01', N'01000356', 1,
    47.5, 47.5, 47.5, 0, 47.5,
    47.5, 47.5, 47.5, 0,
    NULL, NULL, NULL, 0, 1, 1016
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 17), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1017
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 18), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1018
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 19), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1019
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 20), N'01', N'01001806', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1020
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 21), N'01', N'01001164', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1021
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 22), N'01', N'01001570', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 1022
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 23), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1023
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 24), N'01', N'01001585', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 1024
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 25), N'01', N'01001383', 1,
    28.28, 28.28, 28.28, 0, 28.28,
    28.28, 28.28, 28.28, 0,
    NULL, NULL, NULL, 0, 1, 1025
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 26), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1026
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 27), N'01', N'01001189', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 1027
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 28), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 1028
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 29), N'01', N'01001957', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 1029
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 30), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1030
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 31), N'01', N'01002381', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1031
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 32), N'01', N'01002409', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 1032
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 33), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1033
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 34), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1034
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 35), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1035
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 36), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1036
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 37), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1037
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 38), N'01', N'01000151', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 1038
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 39), N'01', N'05000046', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 1039
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 40), N'01', N'01000586', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1040
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 41), N'01', N'01001855', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1041
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 42), N'01', N'01001231', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1042
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 43), N'01', N'01001742', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 1043
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 44), N'01', N'01001815', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1044
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 45), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 1045
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 46), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1046
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
    NULL, NULL, NULL, 0, 1, 1047
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 48), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1048
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 49), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1049
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 50), N'01', N'01000193', 1,
    28.48, 28.48, 28.48, 0, 28.48,
    28.48, 28.48, 28.48, 0,
    NULL, NULL, NULL, 0, 1, 1050
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 51), N'01', N'01001957', 3,
    29.75, 29.75, 89.25, 0, 89.25,
    29.75, 89.25, 89.25, 0,
    NULL, NULL, NULL, 0, 1, 1051
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 52), N'01', N'01001037', 2,
    21.65, 21.65, 43.3, 0, 43.3,
    21.65, 43.3, 43.3, 0,
    NULL, NULL, NULL, 0, 1, 1052
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 53), N'01', N'12000002', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1053
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 54), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1054
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 55), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1055
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 56), N'01', N'01000439', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 1056
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 57), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1057
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 58), N'01', N'01000514', 1,
    18.19, 18.19, 18.19, 0, 18.19,
    18.19, 18.19, 18.19, 0,
    NULL, NULL, NULL, 0, 1, 1058
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 59), N'01', N'01002411', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1059
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 60), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 1060
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 61), N'01', N'01001231', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1061
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 62), N'01', N'01001574', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1062
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 63), N'01', N'01001037', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 1063
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 64), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1064
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 65), N'01', N'01002417', 1,
    38.24, 38.24, 38.24, 0, 38.24,
    38.24, 38.24, 38.24, 0,
    NULL, NULL, NULL, 0, 1, 1065
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 66), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 1066
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 67), N'01', N'01001598', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1067
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 68), N'01', N'01000613', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1068
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 69), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1069
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 70), N'01', N'01001219', 1,
    20.56, 20.56, 20.56, 0, 20.56,
    20.56, 20.56, 20.56, 0,
    NULL, NULL, NULL, 0, 1, 1070
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 71), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1071
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 72), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1072
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 73), N'01', N'03000164', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 1073
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 74), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1074
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 75), N'01', N'01001333', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1075
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 76), N'01', N'01000641', 2,
    33.29, 33.29, 66.58, 0, 66.58,
    33.29, 66.58, 66.58, 0,
    NULL, NULL, NULL, 0, 1, 1076
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 77), N'01', N'01000615', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1077
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 78), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 1078
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 79), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1079
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 80), N'01', N'03000202', 2,
    15.99, 15.99, 31.98, 0, 31.98,
    15.99, 31.98, 31.98, 0,
    NULL, NULL, NULL, 0, 1, 1080
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 81), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1081
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 82), N'01', N'01001462', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 1082
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 83), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1083
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 84), N'01', N'01000068', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1084
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 85), N'01', N'01000068', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1085
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 86), N'01', N'01002853', 1,
    23.79, 23.79, 23.79, 0, 23.79,
    23.79, 23.79, 23.79, 0,
    NULL, NULL, NULL, 0, 1, 1086
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 87), N'01', N'01000023', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 1087
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 88), N'01', N'01001805', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 1088
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 89), N'01', N'05000082', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1089
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 90), N'01', N'05000014', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1090
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 91), N'01', N'01000387', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1091
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 92), N'01', N'01000387', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1092
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 93), N'01', N'01001939', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1093
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 94), N'01', N'01001161', 1,
    19.7, 19.7, 19.7, 0, 19.7,
    19.7, 19.7, 19.7, 0,
    NULL, NULL, NULL, 0, 1, 1094
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 95), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1095
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 96), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1096
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 97), N'01', N'05000011', 2,
    18.39, 18.39, 36.78, 0, 36.78,
    18.39, 36.78, 36.78, 0,
    NULL, NULL, NULL, 0, 1, 1097
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 98), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 1098
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 99), N'01', N'01002294', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 1099
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 100), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1100
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 101), N'01', N'01000367', 2,
    54.99, 54.99, 109.98, 0, 109.98,
    54.99, 109.98, 109.98, 0,
    NULL, NULL, NULL, 0, 1, 1101
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 102), N'01', N'01000576', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1102
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 103), N'01', N'01001453', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1103
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 104), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1104
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 105), N'01', N'01001452', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1105
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 106), N'01', N'01001452', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1106
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 107), N'01', N'01001333', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 1107
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 108), N'01', N'01001337', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1108
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 109), N'01', N'01000150', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 1109
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 110), N'01', N'01001143', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 1110
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 111), N'01', N'01001737', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1111
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 112), N'01', N'01000455', 1,
    35.69, 35.69, 35.69, 0, 35.69,
    35.69, 35.69, 35.69, 0,
    NULL, NULL, NULL, 0, 1, 1112
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 113), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1113
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 114), N'01', N'01000496', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1114
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 115), N'01', N'01001609', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 1115
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 116), N'01', N'01001609', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 1116
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 117), N'01', N'01002343', 1,
    57.99, 57.99, 57.99, 0, 57.99,
    57.99, 57.99, 57.99, 0,
    NULL, NULL, NULL, 0, 1, 1117
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 118), N'01', N'01002342', 1,
    42.49, 42.49, 42.49, 0, 42.49,
    42.49, 42.49, 42.49, 0,
    NULL, NULL, NULL, 0, 1, 1118
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 119), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1119
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 120), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 1120
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 121), N'01', N'01001927', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1121
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 122), N'01', N'01001564', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1122
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 123), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1123
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 124), N'01', N'05000079', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1124
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 125), N'01', N'01000004', 1,
    21.59, 21.59, 21.59, 0, 21.59,
    21.59, 21.59, 21.59, 0,
    NULL, NULL, NULL, 0, 1, 1125
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 126), N'01', N'01001145', 1,
    27.19, 27.19, 27.19, 0, 27.19,
    27.19, 27.19, 27.19, 0,
    NULL, NULL, NULL, 0, 1, 1126
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 127), N'01', N'01000300', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1127
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 128), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1128
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 129), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1129
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 130), N'01', N'01000857', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 1130
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 131), N'01', N'01000857', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 1131
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 132), N'01', N'01001091', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1132
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 133), N'01', N'01001091', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1133
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 134), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1134
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 135), N'01', N'05000035', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1135
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 136), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1136
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 137), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1137
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 138), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1138
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 139), N'01', N'01001073', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1139
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 140), N'01', N'01000194', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1140
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 141), N'01', N'02000701', 2,
    59.39, 59.39, 118.78, 0, 118.78,
    59.39, 118.78, 118.78, 0,
    NULL, NULL, NULL, 0, 1, 1141
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 142), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1142
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 143), N'01', N'03000192', 1,
    59.98, 59.98, 59.98, 0, 59.98,
    59.98, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 1143
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 144), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1144
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 145), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 1145
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 146), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1146
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 147), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1147
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 148), N'01', N'01001092', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1148
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 149), N'01', N'01001092', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1149
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 150), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 1150
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 151), N'01', N'01001270', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1151
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 152), N'01', N'01000642', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1152
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 153), N'01', N'01001091', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1153
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 154), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1154
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 155), N'01', N'01001383', 2,
    28.28, 28.28, 56.56, 0, 56.56,
    28.28, 56.56, 56.56, 0,
    NULL, NULL, NULL, 0, 1, 1155
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 156), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1156
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 157), N'01', N'01000588', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1157
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 158), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 1158
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 159), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1159
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 160), N'01', N'01000200', 1,
    35.84, 35.84, 35.84, 0, 35.84,
    35.84, 35.84, 35.84, 0,
    NULL, NULL, NULL, 0, 1, 1160
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 161), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1161
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 162), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1162
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 163), N'01', N'02000729', 1,
    44.09, 44.09, 44.09, 0, 44.09,
    44.09, 44.09, 44.09, 0,
    NULL, NULL, NULL, 0, 1, 1163
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 164), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 1164
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 165), N'01', N'01001930', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1165
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 166), N'01', N'01001075', 1,
    23.79, 23.79, 23.79, 0, 23.79,
    23.79, 23.79, 23.79, 0,
    NULL, NULL, NULL, 0, 1, 1166
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 167), N'01', N'01001116', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1167
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 168), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1168
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 169), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 1169
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 170), N'01', N'03000167', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1170
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 171), N'01', N'01000360', 2,
    37.99, 37.99, 75.98, 0, 75.98,
    37.99, 75.98, 75.98, 0,
    NULL, NULL, NULL, 0, 1, 1171
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 172), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 1172
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 173), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 1173
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 174), N'01', N'01001319', 1,
    26.97, 26.97, 26.97, 0, 26.97,
    26.97, 26.97, 26.97, 0,
    NULL, NULL, NULL, 0, 1, 1174
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 175), N'01', N'01001088', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1175
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 176), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1176
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 177), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1177
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 178), N'01', N'01000230', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 1178
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 179), N'01', N'01000605', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1179
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 180), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1180
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 181), N'01', N'03000312', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1181
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 182), N'01', N'01002381', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1182
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 183), N'01', N'01000406', 1,
    32.89, 32.89, 32.89, 0, 32.89,
    32.89, 32.89, 32.89, 0,
    NULL, NULL, NULL, 0, 1, 1183
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 184), N'01', N'01001087', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1184
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 185), N'01', N'05000004', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 1185
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 186), N'01', N'01000022', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1186
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 187), N'01', N'03000206', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 1187
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 188), N'01', N'14000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1188
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 189), N'01', N'01001449', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1189
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 190), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1190
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 191), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1191
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 192), N'01', N'01001413', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1192
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 193), N'01', N'01000217', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1193
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 194), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1194
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 195), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1195
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 196), N'01', N'01001280', 2,
    28.99, 28.99, 57.98, 0, 57.98,
    28.99, 57.98, 57.98, 0,
    NULL, NULL, NULL, 0, 1, 1196
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 197), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1197
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 198), N'01', N'03000283', 1,
    55.24, 55.24, 55.24, 0, 55.24,
    55.24, 55.24, 55.24, 0,
    NULL, NULL, NULL, 0, 1, 1198
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 199), N'01', N'01001906', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1199
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 200), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 1200
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 201), N'01', N'01000588', 3,
    46.99, 46.99, 140.97, 0, 140.97,
    46.99, 140.97, 140.97, 0,
    NULL, NULL, NULL, 0, 1, 1201
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 202), N'01', N'01000588', 2,
    46.99, 46.99, 93.98, 0, 93.98,
    46.99, 93.98, 93.98, 0,
    NULL, NULL, NULL, 0, 1, 1202
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 203), N'01', N'01001486', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 1203
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 204), N'01', N'01002217', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 1204
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 205), N'01', N'07000006', 1,
    36.8, 36.8, 36.8, 0, 36.8,
    36.8, 36.8, 36.8, 0,
    NULL, NULL, NULL, 0, 1, 1205
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 206), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1206
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 207), N'01', N'01001115', 1,
    19.58, 19.58, 19.58, 0, 19.58,
    19.58, 19.58, 19.58, 0,
    NULL, NULL, NULL, 0, 1, 1207
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 208), N'01', N'01001706', 2,
    22.47, 22.47, 44.94, 0, 44.94,
    22.47, 44.94, 44.94, 0,
    NULL, NULL, NULL, 0, 1, 1208
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 209), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1209
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 210), N'01', N'03000089', 1,
    109.99, 109.99, 109.99, 0, 109.99,
    109.99, 109.99, 109.99, 0,
    NULL, NULL, NULL, 0, 1, 1210
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 211), N'01', N'08000004', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 1211
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 212), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1212
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 213), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1213
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 214), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1214
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 215), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1215
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 216), N'01', N'05000003', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1216
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 217), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1217
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 218), N'01', N'03000169', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 1218
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 219), N'01', N'01001090', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 1219
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 220), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1220
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 221), N'01', N'01002318', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 1221
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 222), N'01', N'01000233', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 1222
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 223), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1223
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 224), N'01', N'01001263', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1224
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 225), N'01', N'01001109', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1225
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 226), N'01', N'01001568', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 1226
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 227), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 1227
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 228), N'01', N'01000406', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1228
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 229), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1229
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 230), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 1230
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 231), N'01', N'01002184', 2,
    42.99, 42.99, 85.98, 0, 85.98,
    42.99, 85.98, 85.98, 0,
    NULL, NULL, NULL, 0, 1, 1231
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 232), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1232
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 233), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1233
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 234), N'01', N'01001219', 1,
    20.56, 20.56, 20.56, 0, 20.56,
    20.56, 20.56, 20.56, 0,
    NULL, NULL, NULL, 0, 1, 1234
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 235), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1235
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 236), N'01', N'01002341', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1236
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 237), N'01', N'01000586', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1237
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 238), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1238
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 239), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 1239
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 240), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 1240
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 241), N'01', N'01002381', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 1241
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 242), N'01', N'01001685', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 1242
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 243), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1243
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 244), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1244
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 245), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1245
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 246), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1246
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 247), N'01', N'01001337', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1247
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 248), N'01', N'01001089', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 1248
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 249), N'01', N'01001272', 2,
    28.99, 28.99, 57.98, 0, 57.98,
    28.99, 57.98, 57.98, 0,
    NULL, NULL, NULL, 0, 1, 1249
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 250), N'01', N'01001315', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1250
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 251), N'01', N'01001384', 1,
    25.98, 25.98, 25.98, 0, 25.98,
    25.98, 25.98, 25.98, 0,
    NULL, NULL, NULL, 0, 1, 1251
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 252), N'01', N'01001449', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1252
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 253), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 1253
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 254), N'01', N'01001530', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1254
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 255), N'01', N'01002387', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1255
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 256), N'01', N'05000011', 3,
    22.99, 22.99, 68.97, 0, 68.97,
    22.99, 68.97, 68.97, 0,
    NULL, NULL, NULL, 0, 1, 1256
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 257), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1257
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 258), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 1258
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 259), N'01', N'03000076', 1,
    46.07, 46.07, 46.07, 0, 46.07,
    46.07, 46.07, 46.07, 0,
    NULL, NULL, NULL, 0, 1, 1259
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 260), N'01', N'05000011', 4,
    19.59, 19.59, 78.36, 0, 78.36,
    19.59, 78.36, 78.36, 0,
    NULL, NULL, NULL, 0, 1, 1260
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 261), N'01', N'01000614', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1261
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 262), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 1262
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 263), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 1263
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 264), N'01', N'01001868', 1,
    24.29, 24.29, 24.29, 0, 24.29,
    24.29, 24.29, 24.29, 0,
    NULL, NULL, NULL, 0, 1, 1264
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 265), N'01', N'01001598', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1265
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 266), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1266
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 267), N'01', N'01001571', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 1267
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 268), N'01', N'01000517', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1268
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 269), N'01', N'01001456', 1,
    23.79, 23.79, 23.79, 0, 23.79,
    23.79, 23.79, 23.79, 0,
    NULL, NULL, NULL, 0, 1, 1269
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 270), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1270
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 271), N'01', N'01001107', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1271
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 272), N'01', N'01001376', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1272
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 273), N'01', N'03000076', 1,
    46.07, 46.07, 46.07, 0, 46.07,
    46.07, 46.07, 46.07, 0,
    NULL, NULL, NULL, 0, 1, 1273
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 274), N'01', N'01002410', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1274
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 275), N'01', N'01001564', 3,
    28.49, 28.49, 85.47, 0, 85.47,
    28.49, 85.47, 85.47, 0,
    NULL, NULL, NULL, 0, 1, 1275
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 276), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1276
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 277), N'01', N'01001026', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1277
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 278), N'01', N'01000200', 2,
    35.84, 35.84, 71.68, 0, 71.68,
    35.84, 71.68, 71.68, 0,
    NULL, NULL, NULL, 0, 1, 1278
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 279), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 1279
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 280), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1280
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 281), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1281
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 282), N'01', N'01001843', 2,
    33.74, 33.74, 67.48, 0, 67.48,
    33.74, 67.48, 67.48, 0,
    NULL, NULL, NULL, 0, 1, 1282
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 283), N'01', N'01001801', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1283
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 284), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1284
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 285), N'01', N'01000233', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1285
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 286), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1286
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 287), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 1287
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 288), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1288
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 289), N'01', N'01002258', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 1289
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 290), N'01', N'01002603', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1290
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 291), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1291
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 292), N'01', N'01002237', 1,
    41.79, 41.79, 41.79, 0, 41.79,
    41.79, 41.79, 41.79, 0,
    NULL, NULL, NULL, 0, 1, 1292
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 293), N'01', N'01000602', 1,
    29.69, 29.69, 29.69, 0, 29.69,
    29.69, 29.69, 29.69, 0,
    NULL, NULL, NULL, 0, 1, 1293
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 294), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1294
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 295), N'01', N'05000045', 1,
    16.99, 16.99, 16.99, 0, 16.99,
    16.99, 16.99, 16.99, 0,
    NULL, NULL, NULL, 0, 1, 1295
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 296), N'01', N'05000045', 1,
    16.99, 16.99, 16.99, 0, 16.99,
    16.99, 16.99, 16.99, 0,
    NULL, NULL, NULL, 0, 1, 1296
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 297), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1297
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 298), N'01', N'01002742', 1,
    41.79, 41.79, 41.79, 0, 41.79,
    41.79, 41.79, 41.79, 0,
    NULL, NULL, NULL, 0, 1, 1298
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 299), N'01', N'05000011', 4,
    19.59, 19.59, 78.36, 0, 78.36,
    19.59, 78.36, 78.36, 0,
    NULL, NULL, NULL, 0, 1, 1299
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 300), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1300
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 301), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 1301
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 302), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 1302
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 303), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1303
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 304), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1304
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 305), N'01', N'01002236', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 1305
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 306), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1306
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 307), N'01', N'01000615', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1307
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 308), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1308
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 309), N'01', N'01001957', 1,
    22.01, 22.01, 22.01, 0, 22.01,
    22.01, 22.01, 22.01, 0,
    NULL, NULL, NULL, 0, 1, 1309
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 310), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 1310
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 311), N'01', N'03000095', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 1311
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 312), N'01', N'01001598', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 1312
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 313), N'01', N'01001598', 5,
    27.99, 27.99, 139.95, 0, 139.95,
    27.99, 139.95, 139.95, 0,
    NULL, NULL, NULL, 0, 1, 1313
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 314), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 1314
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 315), N'01', N'01001586', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 1315
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 316), N'01', N'07000003', 1,
    29.59, 29.59, 29.59, 0, 29.59,
    29.59, 29.59, 29.59, 0,
    NULL, NULL, NULL, 0, 1, 1316
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 317), N'01', N'01001765', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1317
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 318), N'01', N'02000741', 1,
    58.49, 58.49, 58.49, 0, 58.49,
    58.49, 58.49, 58.49, 0,
    NULL, NULL, NULL, 0, 1, 1318
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 319), N'01', N'02000741', 1,
    58.49, 58.49, 58.49, 0, 58.49,
    58.49, 58.49, 58.49, 0,
    NULL, NULL, NULL, 0, 1, 1319
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 320), N'01', N'01001381', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1320
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 321), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1321
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 322), N'01', N'02000741', 1,
    58.49, 58.49, 58.49, 0, 58.49,
    58.49, 58.49, 58.49, 0,
    NULL, NULL, NULL, 0, 1, 1322
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 323), N'01', N'02000741', 1,
    58.49, 58.49, 58.49, 0, 58.49,
    58.49, 58.49, 58.49, 0,
    NULL, NULL, NULL, 0, 1, 1323
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 324), N'01', N'03000138', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1324
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 325), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1325
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 326), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1326
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 327), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1327
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 328), N'01', N'01001907', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 1328
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 329), N'01', N'01001574', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1329
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 330), N'01', N'01001506', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 1330
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 331), N'01', N'01000216', 2,
    46.99, 46.99, 93.98, 0, 93.98,
    46.99, 93.98, 93.98, 0,
    NULL, NULL, NULL, 0, 1, 1331
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 332), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1332
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 333), N'01', N'03000065', 1,
    76.99, 76.99, 76.99, 0, 76.99,
    76.99, 76.99, 76.99, 0,
    NULL, NULL, NULL, 0, 1, 1333
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 334), N'01', N'03000170', 1,
    68.99, 68.99, 68.99, 0, 68.99,
    68.99, 68.99, 68.99, 0,
    NULL, NULL, NULL, 0, 1, 1334
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 335), N'01', N'03000127', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1335
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 336), N'01', N'01001728', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 1336
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 337), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1337
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 338), N'01', N'01000603', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1338
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 339), N'01', N'01001568', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 1339
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 340), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 1340
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 341), N'01', N'05000114', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 1341
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 342), N'01', N'14000006', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1342
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 343), N'01', N'02000701', 1,
    59.39, 59.39, 59.39, 0, 59.39,
    59.39, 59.39, 59.39, 0,
    NULL, NULL, NULL, 0, 1, 1343
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 344), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 1344
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 345), N'01', N'12000009', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1345
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 346), N'01', N'12000009', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1346
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 347), N'01', N'05000034', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1347
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 348), N'01', N'05000034', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1348
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 349), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1349
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 350), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1350
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 351), N'01', N'01002188', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 1351
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 352), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1352
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 353), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1353
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 354), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1354
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 355), N'01', N'01002363', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1355
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 356), N'01', N'01001865', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 1356
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 357), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1357
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 358), N'01', N'09000020', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1358
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 359), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1359
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 360), N'01', N'01001337', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 1360
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 361), N'01', N'01000289', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 1361
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 362), N'01', N'01000387', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1362
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 363), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1363
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 364), N'01', N'03000152', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1364
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 365), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1365
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 366), N'01', N'02000754', 1,
    71.54, 71.54, 71.54, 0, 71.54,
    71.54, 71.54, 71.54, 0,
    NULL, NULL, NULL, 0, 1, 1366
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 367), N'01', N'01002440', 1,
    30.09, 30.09, 30.09, 0, 30.09,
    30.09, 30.09, 30.09, 0,
    NULL, NULL, NULL, 0, 1, 1367
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 368), N'01', N'01001454', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 1368
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 369), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1369
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 370), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1370
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 371), N'01', N'01002285', 1,
    30.09, 30.09, 30.09, 0, 30.09,
    30.09, 30.09, 30.09, 0,
    NULL, NULL, NULL, 0, 1, 1371
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 372), N'01', N'01001510', 2,
    36.09, 36.09, 72.18, 0, 72.18,
    36.09, 72.18, 72.18, 0,
    NULL, NULL, NULL, 0, 1, 1372
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 373), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1373
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 374), N'01', N'01002228', 2,
    109.99, 109.99, 219.98, 0, 219.98,
    109.99, 219.98, 219.98, 0,
    NULL, NULL, NULL, 0, 1, 1374
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 375), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1375
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 376), N'01', N'01000200', 1,
    35.84, 35.84, 35.84, 0, 35.84,
    35.84, 35.84, 35.84, 0,
    NULL, NULL, NULL, 0, 1, 1376
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 377), N'01', N'01000200', 1,
    35.84, 35.84, 35.84, 0, 35.84,
    35.84, 35.84, 35.84, 0,
    NULL, NULL, NULL, 0, 1, 1377
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 378), N'01', N'01002424', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1378
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 379), N'01', N'01002424', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1379
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 380), N'01', N'03000128', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1380
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 381), N'01', N'01000515', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1381
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 382), N'01', N'03000093', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 1382
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 383), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1383
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 384), N'01', N'01000022', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 1384
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 385), N'01', N'01000642', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1385
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 386), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1386
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 387), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1387
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 388), N'01', N'03000140', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1388
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 389), N'01', N'01000496', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1389
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 390), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1390
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 391), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1391
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 392), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1392
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 393), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 1393
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 394), N'01', N'01001429', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1394
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 395), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1395
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 396), N'01', N'03000174', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 1396
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 397), N'01', N'03000167', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1397
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 398), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1398
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 399), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 1399
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 400), N'01', N'09000023', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1400
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 401), N'01', N'01001221', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 1401
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 402), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1402
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 403), N'01', N'01002238', 2,
    42.74, 42.74, 85.48, 0, 85.48,
    42.74, 85.48, 85.48, 0,
    NULL, NULL, NULL, 0, 1, 1403
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 404), N'01', N'01002238', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 1404
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 405), N'01', N'14000005', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1405
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 406), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1406
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 407), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1407
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 408), N'01', N'01000106', 1,
    56.99, 56.99, 56.99, 0, 56.99,
    56.99, 56.99, 56.99, 0,
    NULL, NULL, NULL, 0, 1, 1408
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 409), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 1409
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 410), N'01', N'01001497', 1,
    22.55, 22.55, 22.55, 0, 22.55,
    22.55, 22.55, 22.55, 0,
    NULL, NULL, NULL, 0, 1, 1410
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 411), N'01', N'01001497', 1,
    22.55, 22.55, 22.55, 0, 22.55,
    22.55, 22.55, 22.55, 0,
    NULL, NULL, NULL, 0, 1, 1411
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 412), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1412
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 413), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1413
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 414), N'01', N'01001167', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 1414
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 415), N'01', N'03000131', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1415
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 416), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1416
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 417), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1417
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 418), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1418
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 419), N'01', N'01001736', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1419
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 420), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1420
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 421), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1421
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 422), N'01', N'01001165', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 1422
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 423), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1423
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 424), N'01', N'01001055', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 1424
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 425), N'01', N'01002009', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 1425
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 426), N'01', N'01000387', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1426
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 427), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1427
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 428), N'01', N'01002187', 2,
    39.99, 39.99, 79.98, 0, 79.98,
    39.99, 79.98, 79.98, 0,
    NULL, NULL, NULL, 0, 1, 1428
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 429), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1429
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 430), N'01', N'01001758', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1430
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 431), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1431
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 432), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1432
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 433), N'01', N'01002411', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1433
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 434), N'01', N'01002411', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1434
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 435), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1435
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 436), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1436
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 437), N'01', N'01001801', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1437
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 438), N'01', N'01001190', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 1438
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 439), N'01', N'01001904', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1439
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 440), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1440
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 441), N'01', N'01001337', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1441
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 442), N'01', N'01002356', 2,
    42.99, 42.99, 85.98, 0, 85.98,
    42.99, 85.98, 85.98, 0,
    NULL, NULL, NULL, 0, 1, 1442
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 443), N'01', N'01000385', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1443
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 444), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1444
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 445), N'01', N'01001116', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1445
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 446), N'01', N'01000498', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 1446
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 447), N'01', N'03000099', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1447
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 448), N'01', N'05000045', 1,
    16.99, 16.99, 16.99, 0, 16.99,
    16.99, 16.99, 16.99, 0,
    NULL, NULL, NULL, 0, 1, 1448
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 449), N'01', N'05000045', 1,
    16.99, 16.99, 16.99, 0, 16.99,
    16.99, 16.99, 16.99, 0,
    NULL, NULL, NULL, 0, 1, 1449
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 450), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1450
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 451), N'01', N'01001037', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 1451
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 452), N'01', N'03000109', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1452
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 453), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1453
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 454), N'01', N'01000642', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1454
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 455), N'01', N'03000205', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 1455
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 456), N'01', N'01002346', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1456
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 457), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 1457
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 458), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1458
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 459), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 1459
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 460), N'01', N'01001042', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1460
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 461), N'01', N'01001824', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 1461
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 462), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1462
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
    NULL, NULL, NULL, 0, 1, 1463
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 464), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1464
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 465), N'01', N'01001610', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 1465
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 466), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 1466
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 467), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1467
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 468), N'01', N'05000011', 3,
    22.99, 22.99, 68.97, 0, 68.97,
    22.99, 68.97, 68.97, 0,
    NULL, NULL, NULL, 0, 1, 1468
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 469), N'01', N'01001107', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1469
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 470), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1470
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 471), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1471
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 472), N'01', N'01000994', 1,
    18.04, 18.04, 18.04, 0, 18.04,
    18.04, 18.04, 18.04, 0,
    NULL, NULL, NULL, 0, 1, 1472
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 473), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1473
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 474), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1474
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 475), N'01', N'01002388', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 1475
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 476), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1476
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 477), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 1477
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 478), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1478
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 479), N'01', N'01001742', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 1479
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 480), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 1480
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 481), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 1481
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 482), N'01', N'01001221', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 1482
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 483), N'01', N'01001048', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1483
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 484), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1484
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 485), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1485
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 486), N'01', N'01001192', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1486
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 487), N'01', N'01001192', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1487
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 488), N'01', N'01001224', 1,
    23.75, 23.75, 23.75, 0, 23.75,
    23.75, 23.75, 23.75, 0,
    NULL, NULL, NULL, 0, 1, 1488
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 489), N'01', N'01001082', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 1489
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 490), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1490
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 491), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1491
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 492), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1492
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 493), N'01', N'01000473', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1493
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 494), N'01', N'05000104', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 1494
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 495), N'01', N'01001855', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1495
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 496), N'01', N'01000604', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1496
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 497), N'01', N'01000358', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 1497
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 498), N'01', N'03000058', 2,
    20.65, 20.65, 41.3, 0, 41.3,
    20.65, 41.3, 41.3, 0,
    NULL, NULL, NULL, 0, 1, 1498
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 499), N'01', N'03000058', 2,
    20.65, 20.65, 41.3, 0, 41.3,
    20.65, 41.3, 41.3, 0,
    NULL, NULL, NULL, 0, 1, 1499
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 500), N'01', N'03000058', 1,
    20.65, 20.65, 20.65, 0, 20.65,
    20.65, 20.65, 20.65, 0,
    NULL, NULL, NULL, 0, 1, 1500
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 501), N'01', N'01000197', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 1501
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 502), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1502
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 503), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1503
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 504), N'01', N'02000757', 1,
    93.14, 93.14, 93.14, 0, 93.14,
    93.14, 93.14, 93.14, 0,
    NULL, NULL, NULL, 0, 1, 1504
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 505), N'01', N'02000757', 1,
    93.14, 93.14, 93.14, 0, 93.14,
    93.14, 93.14, 93.14, 0,
    NULL, NULL, NULL, 0, 1, 1505
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 506), N'01', N'01002416', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 1506
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 507), N'01', N'07000001', 2,
    27.98, 27.98, 55.96, 0, 55.96,
    27.98, 55.96, 55.96, 0,
    NULL, NULL, NULL, 0, 1, 1507
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 508), N'01', N'05000003', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1508
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 509), N'01', N'01000404', 2,
    41.99, 41.99, 83.98, 0, 83.98,
    41.99, 83.98, 83.98, 0,
    NULL, NULL, NULL, 0, 1, 1509
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 510), N'01', N'01001226', 4,
    19.99, 19.99, 79.96, 0, 79.96,
    19.99, 79.96, 79.96, 0,
    NULL, NULL, NULL, 0, 1, 1510
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 511), N'01', N'01001575', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1511
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 512), N'01', N'01001575', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1512
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 513), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1513
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 514), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1514
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 515), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1515
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 516), N'01', N'01001906', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1516
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 517), N'01', N'01000153', 1,
    25.49, 25.49, 25.49, 0, 25.49,
    25.49, 25.49, 25.49, 0,
    NULL, NULL, NULL, 0, 1, 1517
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 518), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1518
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 519), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 1519
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 520), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1520
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 521), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1521
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 522), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 1522
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 523), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1523
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 524), N'01', N'01000458', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 1524
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 525), N'01', N'01002258', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 1525
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 526), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1526
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 527), N'01', N'01001091', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 1527
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 528), N'01', N'03000054', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1528
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 529), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1529
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 530), N'01', N'07000001', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1530
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 531), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1531
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 532), N'01', N'01001957', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 1532
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 533), N'01', N'01001344', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1533
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 534), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1534
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 535), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1535
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 536), N'01', N'05000006', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 1536
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 537), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1537
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 538), N'01', N'01001534', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 1538
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 539), N'01', N'01000458', 1,
    41.64, 41.64, 41.64, 0, 41.64,
    41.64, 41.64, 41.64, 0,
    NULL, NULL, NULL, 0, 1, 1539
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 540), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1540
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 541), N'01', N'05000034', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1541
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 542), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1542
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 543), N'01', N'01001442', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1543
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
    NULL, NULL, NULL, 0, 1, 1544
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 545), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1545
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 546), N'01', N'01001418', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1546
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 547), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 1547
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 548), N'01', N'03000086', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1548
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 549), N'01', N'01002010', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 1549
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 550), N'01', N'01001560', 2,
    22.55, 22.55, 45.1, 0, 45.1,
    22.55, 45.1, 45.1, 0,
    NULL, NULL, NULL, 0, 1, 1550
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 551), N'01', N'03000311', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1551
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 552), N'01', N'01001598', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1552
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 553), N'01', N'01002269', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 1553
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 554), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1554
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 555), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1555
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 556), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1556
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 557), N'01', N'01001593', 2,
    27.07, 27.07, 54.14, 0, 54.14,
    27.07, 54.14, 54.14, 0,
    NULL, NULL, NULL, 0, 1, 1557
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 558), N'01', N'01001050', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 1558
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 559), N'01', N'01002165', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1559
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 560), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 1560
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 561), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 1561
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 562), N'01', N'03000096', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 1562
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 563), N'01', N'01002603', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1563
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 564), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 1564
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 565), N'01', N'05000037', 2,
    16.99, 16.99, 33.98, 0, 33.98,
    16.99, 33.98, 33.98, 0,
    NULL, NULL, NULL, 0, 1, 1565
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 566), N'01', N'01000617', 1,
    29.69, 29.69, 29.69, 0, 29.69,
    29.69, 29.69, 29.69, 0,
    NULL, NULL, NULL, 0, 1, 1566
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 567), N'01', N'01002347', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1567
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 568), N'01', N'01001026', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 1568
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 569), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1569
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 570), N'01', N'01000455', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 1570
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 571), N'01', N'01000458', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 1571
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 572), N'01', N'01001804', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1572
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 573), N'01', N'01001727', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1573
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 574), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1574
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 575), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1575
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 576), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1576
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 577), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1577
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 578), N'01', N'01001381', 1,
    22.39, 22.39, 22.39, 0, 22.39,
    22.39, 22.39, 22.39, 0,
    NULL, NULL, NULL, 0, 1, 1578
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 579), N'01', N'01000776', 1,
    29.79, 29.79, 29.79, 0, 29.79,
    29.79, 29.79, 29.79, 0,
    NULL, NULL, NULL, 0, 1, 1579
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 580), N'01', N'01000588', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1580
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 581), N'01', N'01001219', 2,
    20.56, 20.56, 41.12, 0, 41.12,
    20.56, 41.12, 41.12, 0,
    NULL, NULL, NULL, 0, 1, 1581
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 582), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1582
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 583), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1583
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 584), N'01', N'01000149', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 1584
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 585), N'01', N'01001282', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1585
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 586), N'01', N'01000283', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1586
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 587), N'01', N'01000050', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 1587
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 588), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1588
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 589), N'01', N'03000173', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1589
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 590), N'01', N'05000104', 3,
    26.99, 26.99, 80.97, 0, 80.97,
    26.99, 80.97, 80.97, 0,
    NULL, NULL, NULL, 0, 1, 1590
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 591), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 1591
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 592), N'01', N'03000119', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 1592
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 593), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1593
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 594), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1594
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 595), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1595
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 596), N'01', N'01002603', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1596
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 597), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 1597
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 598), N'01', N'02000772', 1,
    83.15, 83.15, 83.15, 0, 83.15,
    83.15, 83.15, 83.15, 0,
    NULL, NULL, NULL, 0, 1, 1598
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 599), N'01', N'01001553', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1599
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 600), N'01', N'03000106', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 1600
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 601), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1601
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 602), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 1602
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 603), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1603
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 604), N'01', N'05000074', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 1604
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 605), N'01', N'01001509', 2,
    29.77, 29.77, 59.54, 0, 59.54,
    29.77, 59.54, 59.54, 0,
    NULL, NULL, NULL, 0, 1, 1605
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 606), N'01', N'01000053', 1,
    43.22, 43.22, 43.22, 0, 43.22,
    43.22, 43.22, 43.22, 0,
    NULL, NULL, NULL, 0, 1, 1606
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 607), N'01', N'01001113', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1607
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 608), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1608
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 609), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1609
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 610), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1610
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 611), N'01', N'01001039', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1611
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 612), N'01', N'01001689', 2,
    33.24, 33.24, 66.48, 0, 66.48,
    33.24, 66.48, 66.48, 0,
    NULL, NULL, NULL, 0, 1, 1612
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 613), N'01', N'01000215', 2,
    31.26, 31.26, 62.52, 0, 62.52,
    31.26, 62.52, 62.52, 0,
    NULL, NULL, NULL, 0, 1, 1613
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 614), N'01', N'01000228', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1614
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 615), N'01', N'01002388', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 1615
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 616), N'01', N'02000761', 1,
    113.84, 113.84, 113.84, 0, 113.84,
    113.84, 113.84, 113.84, 0,
    NULL, NULL, NULL, 0, 1, 1616
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 617), N'01', N'01001333', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 1617
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 618), N'01', N'01000641', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1618
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 619), N'01', N'01000385', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1619
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 620), N'01', N'01001609', 2,
    24.69, 24.69, 49.38, 0, 49.38,
    24.69, 49.38, 49.38, 0,
    NULL, NULL, NULL, 0, 1, 1620
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 621), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 1621
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 622), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1622
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 623), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1623
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 624), N'01', N'05000044', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1624
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 625), N'01', N'01001906', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1625
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 626), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1626
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 627), N'01', N'01001143', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1627
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 628), N'01', N'01001143', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1628
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 629), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1629
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 630), N'01', N'01002388', 1,
    30.79, 30.79, 30.79, 0, 30.79,
    30.79, 30.79, 30.79, 0,
    NULL, NULL, NULL, 0, 1, 1630
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 631), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1631
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 632), N'01', N'03000306', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1632
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 633), N'01', N'01001186', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 1633
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 634), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 1634
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 635), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1635
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 636), N'01', N'14000003', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 1636
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 637), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1637
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 638), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1638
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 639), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1639
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 640), N'01', N'01001270', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1640
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 641), N'01', N'01001502', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1641
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 642), N'01', N'01002395', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 1642
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 643), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1643
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 644), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1644
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 645), N'01', N'01001090', 1,
    16.09, 16.09, 16.09, 0, 16.09,
    16.09, 16.09, 16.09, 0,
    NULL, NULL, NULL, 0, 1, 1645
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 646), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1646
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 647), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1647
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 648), N'01', N'01001813', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1648
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 649), N'01', N'01001383', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1649
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 650), N'01', N'01001530', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1650
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 651), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1651
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 652), N'01', N'01000073', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1652
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 653), N'01', N'01001146', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 1653
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 654), N'01', N'01000602', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1654
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 655), N'01', N'07000007', 1,
    29.59, 29.59, 29.59, 0, 29.59,
    29.59, 29.59, 29.59, 0,
    NULL, NULL, NULL, 0, 1, 1655
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 656), N'01', N'01001736', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 1656
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 657), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1657
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 658), N'01', N'01000151', 2,
    44.64, 44.64, 89.28, 0, 89.28,
    44.64, 89.28, 89.28, 0,
    NULL, NULL, NULL, 0, 1, 1658
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 659), N'01', N'01001589', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 1659
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 660), N'01', N'01000586', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1660
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 661), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1661
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 662), N'01', N'10000003', 1,
    26.98, 26.98, 26.98, 0, 26.98,
    26.98, 26.98, 26.98, 0,
    NULL, NULL, NULL, 0, 1, 1662
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 663), N'01', N'01001598', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1663
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 664), N'01', N'01000618', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1664
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 665), N'01', N'01000385', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1665
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 666), N'01', N'01001187', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 1666
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 667), N'01', N'03000282', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1667
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 668), N'01', N'01001093', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1668
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 669), N'01', N'01002591', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1669
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 670), N'01', N'01001255', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1670
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 671), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1671
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 672), N'01', N'05000003', 2,
    21.99, 21.99, 43.98, 0, 43.98,
    21.99, 43.98, 43.98, 0,
    NULL, NULL, NULL, 0, 1, 1672
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 673), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1673
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 674), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1674
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 675), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1675
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 676), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1676
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 677), N'01', N'01001530', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1677
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 678), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1678
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 679), N'01', N'03000127', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1679
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 680), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1680
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 681), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1681
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 682), N'01', N'05000011', 4,
    19.59, 19.59, 78.36, 0, 78.36,
    19.59, 78.36, 78.36, 0,
    NULL, NULL, NULL, 0, 1, 1682
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 683), N'01', N'01001805', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 1683
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 684), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1684
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 685), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1685
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 686), N'01', N'01002663', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1686
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 687), N'01', N'01000349', 2,
    42.99, 42.99, 85.98, 0, 85.98,
    42.99, 85.98, 85.98, 0,
    NULL, NULL, NULL, 0, 1, 1687
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 688), N'01', N'02000738', 2,
    47.24, 47.24, 94.48, 0, 94.48,
    47.24, 94.48, 94.48, 0,
    NULL, NULL, NULL, 0, 1, 1688
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 689), N'01', N'01001815', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1689
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 690), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1690
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 691), N'01', N'01000082', 1,
    28.79, 28.79, 28.79, 0, 28.79,
    28.79, 28.79, 28.79, 0,
    NULL, NULL, NULL, 0, 1, 1691
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 692), N'01', N'01000473', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 1692
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 693), N'01', N'01000473', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1693
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 694), N'01', N'01000473', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1694
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 695), N'01', N'01000473', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1695
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 696), N'01', N'01000359', 2,
    36.09, 36.09, 72.18, 0, 72.18,
    36.09, 72.18, 72.18, 0,
    NULL, NULL, NULL, 0, 1, 1696
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 697), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1697
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 698), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1698
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 699), N'01', N'01000441', 2,
    43.99, 43.99, 87.98, 0, 87.98,
    43.99, 87.98, 87.98, 0,
    NULL, NULL, NULL, 0, 1, 1699
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 700), N'01', N'01000356', 2,
    59.99, 59.99, 119.98, 0, 119.98,
    59.99, 119.98, 119.98, 0,
    NULL, NULL, NULL, 0, 1, 1700
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 701), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 1701
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 702), N'01', N'09000023', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1702
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 703), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1703
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 704), N'01', N'01001120', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 1704
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 705), N'01', N'01001120', 3,
    33.24, 33.24, 99.72, 0, 99.72,
    33.24, 99.72, 99.72, 0,
    NULL, NULL, NULL, 0, 1, 1705
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 706), N'01', N'05000008', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1706
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 707), N'01', N'01001505', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 1707
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 708), N'01', N'02000768', 1,
    116.99, 116.99, 116.99, 0, 116.99,
    116.99, 116.99, 116.99, 0,
    NULL, NULL, NULL, 0, 1, 1708
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 709), N'01', N'01002215', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 1709
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 710), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1710
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 711), N'01', N'01001043', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1711
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 712), N'01', N'01001381', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 1712
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 713), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1713
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 714), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1714
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 715), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1715
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 716), N'01', N'01002379', 2,
    56.99, 56.99, 113.98, 0, 113.98,
    56.99, 113.98, 113.98, 0,
    NULL, NULL, NULL, 0, 1, 1716
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 717), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1717
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 718), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1718
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 719), N'01', N'01002258', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 1719
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 720), N'01', N'01001600', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 1720
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 721), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 1721
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 722), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 1722
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 723), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 1723
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 724), N'01', N'01001727', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1724
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 725), N'01', N'01001727', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1725
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 726), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 1726
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 727), N'01', N'01001042', 1,
    13.99, 13.99, 13.99, 0, 13.99,
    13.99, 13.99, 13.99, 0,
    NULL, NULL, NULL, 0, 1, 1727
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 728), N'01', N'01001530', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 1728
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 729), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1729
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 730), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1730
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 731), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1731
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 732), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1732
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 733), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1733
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 734), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1734
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 735), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 1735
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 736), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1736
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 737), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1737
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 738), N'01', N'01000896', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 1738
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 739), N'01', N'01000896', 3,
    43.99, 43.99, 131.97, 0, 131.97,
    43.99, 131.97, 131.97, 0,
    NULL, NULL, NULL, 0, 1, 1739
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 740), N'01', N'01001530', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1740
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 741), N'01', N'01001257', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 1741
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 742), N'01', N'01001154', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1742
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 743), N'01', N'01002402', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1743
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 744), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1744
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 745), N'01', N'01000862', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1745
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 746), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1746
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 747), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1747
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 748), N'01', N'01001927', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1748
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 749), N'01', N'01001081', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1749
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 750), N'01', N'03000170', 1,
    68.99, 68.99, 68.99, 0, 68.99,
    68.99, 68.99, 68.99, 0,
    NULL, NULL, NULL, 0, 1, 1750
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 751), N'01', N'05000046', 2,
    23.99, 23.99, 47.98, 0, 47.98,
    23.99, 47.98, 47.98, 0,
    NULL, NULL, NULL, 0, 1, 1751
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 752), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1752
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 753), N'01', N'01000074', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 1753
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 754), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 1754
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 755), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1755
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 756), N'01', N'01001109', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1756
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 757), N'01', N'01001455', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1757
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 758), N'01', N'01000219', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 1758
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 759), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1759
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 760), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1760
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 761), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1761
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 762), N'01', N'01000359', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1762
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 763), N'01', N'01001270', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1763
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 764), N'01', N'01001270', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1764
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 765), N'01', N'03000278', 2,
    37.99, 37.99, 75.98, 0, 75.98,
    37.99, 75.98, 75.98, 0,
    NULL, NULL, NULL, 0, 1, 1765
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 766), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1766
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 767), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1767
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 768), N'01', N'01001189', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 1768
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 769), N'01', N'12000006', 1,
    32.98, 32.98, 32.98, 0, 32.98,
    32.98, 32.98, 32.98, 0,
    NULL, NULL, NULL, 0, 1, 1769
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 770), N'01', N'01001533', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1770
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 771), N'01', N'01002372', 1,
    57.99, 57.99, 57.99, 0, 57.99,
    57.99, 57.99, 57.99, 0,
    NULL, NULL, NULL, 0, 1, 1771
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 772), N'01', N'08000005', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 1772
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 773), N'01', N'01000543', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 1773
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 774), N'01', N'01001813', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1774
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 775), N'01', N'01001050', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 1775
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 776), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 1776
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 777), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 1777
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 778), N'01', N'01001557', 1,
    28.87, 28.87, 28.87, 0, 28.87,
    28.87, 28.87, 28.87, 0,
    NULL, NULL, NULL, 0, 1, 1778
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 779), N'01', N'01002304', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1779
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 780), N'01', N'01001192', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1780
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 781), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 1781
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 782), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1782
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 783), N'01', N'01001557', 1,
    28.87, 28.87, 28.87, 0, 28.87,
    28.87, 28.87, 28.87, 0,
    NULL, NULL, NULL, 0, 1, 1783
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 784), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1784
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 785), N'01', N'03000176', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 1785
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 786), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1786
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 787), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1787
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 788), N'01', N'05000037', 1,
    16.99, 16.99, 16.99, 0, 16.99,
    16.99, 16.99, 16.99, 0,
    NULL, NULL, NULL, 0, 1, 1788
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 789), N'01', N'01000862', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 1789
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 790), N'01', N'14000006', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1790
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 791), N'01', N'05000081', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1791
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 792), N'01', N'01000200', 2,
    35.84, 35.84, 71.68, 0, 71.68,
    35.84, 71.68, 71.68, 0,
    NULL, NULL, NULL, 0, 1, 1792
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 793), N'01', N'01002261', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1793
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 794), N'01', N'01001085', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1794
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 795), N'01', N'05000014', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1795
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 796), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1796
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 797), N'01', N'03000284', 1,
    74.79, 74.79, 74.79, 0, 74.79,
    74.79, 74.79, 74.79, 0,
    NULL, NULL, NULL, 0, 1, 1797
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 798), N'01', N'01002737', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 1798
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 799), N'01', N'01001289', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1799
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 800), N'01', N'01001289', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1800
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 801), N'01', N'01001289', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1801
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 802), N'01', N'01001289', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1802
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 803), N'01', N'01000643', 2,
    46.99, 46.99, 93.98, 0, 93.98,
    46.99, 93.98, 93.98, 0,
    NULL, NULL, NULL, 0, 1, 1803
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 804), N'01', N'01001927', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 1804
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 805), N'01', N'01002424', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1805
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 806), N'01', N'01002417', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1806
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 807), N'01', N'01001590', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 1807
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 808), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1808
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 809), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1809
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 810), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 1810
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 811), N'01', N'01001710', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 1811
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 812), N'01', N'01001710', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 1812
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 813), N'01', N'07000006', 1,
    36.8, 36.8, 36.8, 0, 36.8,
    36.8, 36.8, 36.8, 0,
    NULL, NULL, NULL, 0, 1, 1813
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 814), N'01', N'01000837', 1,
    25.82, 25.82, 25.82, 0, 25.82,
    25.82, 25.82, 25.82, 0,
    NULL, NULL, NULL, 0, 1, 1814
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 815), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 1815
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 816), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1816
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 817), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1817
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 818), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1818
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 819), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 1819
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 820), N'01', N'01002171', 2,
    34.89, 34.89, 69.78, 0, 69.78,
    34.89, 69.78, 69.78, 0,
    NULL, NULL, NULL, 0, 1, 1820
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 821), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1821
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 822), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 1822
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 823), N'01', N'01001871', 1,
    27.53, 27.53, 27.53, 0, 27.53,
    27.53, 27.53, 27.53, 0,
    NULL, NULL, NULL, 0, 1, 1823
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 824), N'01', N'01001871', 1,
    27.53, 27.53, 27.53, 0, 27.53,
    27.53, 27.53, 27.53, 0,
    NULL, NULL, NULL, 0, 1, 1824
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 825), N'01', N'01000574', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1825
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 826), N'01', N'01001231', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1826
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 827), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 1827
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 828), N'01', N'01002269', 1,
    37.39, 37.39, 37.39, 0, 37.39,
    37.39, 37.39, 37.39, 0,
    NULL, NULL, NULL, 0, 1, 1828
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 829), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1829
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 830), N'01', N'01002407', 1,
    40.59, 40.59, 40.59, 0, 40.59,
    40.59, 40.59, 40.59, 0,
    NULL, NULL, NULL, 0, 1, 1830
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 831), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1831
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 832), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1832
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 833), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1833
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 834), N'01', N'01001863', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1834
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 835), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1835
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 836), N'01', N'01001815', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 1836
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 837), N'01', N'03000282', 1,
    37.98, 37.98, 37.98, 0, 37.98,
    37.98, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 1837
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 838), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1838
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 839), N'01', N'03000313', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1839
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 840), N'01', N'03000313', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 1840
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 841), N'01', N'01001609', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 1841
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 842), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1842
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 843), N'01', N'01001272', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 1843
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 844), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1844
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 845), N'01', N'03000183', 2,
    17.99, 17.99, 35.98, 0, 35.98,
    17.99, 35.98, 35.98, 0,
    NULL, NULL, NULL, 0, 1, 1845
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 846), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1846
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 847), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1847
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 848), N'01', N'03000183', 1,
    17.99, 17.99, 17.99, 0, 17.99,
    17.99, 17.99, 17.99, 0,
    NULL, NULL, NULL, 0, 1, 1848
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 849), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1849
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 850), N'01', N'01000994', 1,
    18.04, 18.04, 18.04, 0, 18.04,
    18.04, 18.04, 18.04, 0,
    NULL, NULL, NULL, 0, 1, 1850
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 851), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1851
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 852), N'01', N'03000130', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1852
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 853), N'01', N'03000130', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 1853
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 854), N'01', N'01001042', 1,
    24.35, 24.35, 24.35, 0, 24.35,
    24.35, 24.35, 24.35, 0,
    NULL, NULL, NULL, 0, 1, 1854
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 855), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1855
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 856), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 1856
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 857), N'01', N'01000288', 2,
    42.74, 42.74, 85.48, 0, 85.48,
    42.74, 85.48, 85.48, 0,
    NULL, NULL, NULL, 0, 1, 1857
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 858), N'01', N'01001042', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1858
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 859), N'01', N'01001081', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1859
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 860), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1860
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 861), N'01', N'03000067', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1861
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 862), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1862
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 863), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1863
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 864), N'01', N'01001564', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 1864
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 865), N'01', N'01001080', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 1865
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 866), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1866
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 867), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1867
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 868), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1868
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 869), N'01', N'01001683', 2,
    21.69, 21.69, 43.38, 0, 43.38,
    21.69, 43.38, 43.38, 0,
    NULL, NULL, NULL, 0, 1, 1869
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 870), N'01', N'01001382', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 1870
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 871), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1871
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 872), N'01', N'01002009', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 1872
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 873), N'01', N'01001230', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 1873
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 874), N'01', N'03000142', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 1874
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 875), N'01', N'05000077', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1875
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 876), N'01', N'01001530', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1876
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 877), N'01', N'01001273', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1877
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 878), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 1878
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 879), N'01', N'01001000', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 1879
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 880), N'01', N'05000006', 3,
    22.99, 22.99, 68.97, 0, 68.97,
    22.99, 68.97, 68.97, 0,
    NULL, NULL, NULL, 0, 1, 1880
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 881), N'01', N'01002167', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1881
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 882), N'01', N'01001096', 1,
    24.64, 24.64, 24.64, 0, 24.64,
    24.64, 24.64, 24.64, 0,
    NULL, NULL, NULL, 0, 1, 1882
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 883), N'01', N'08000004', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 1883
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 884), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1884
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 885), N'01', N'01002389', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 1885
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 886), N'01', N'01000834', 1,
    51.99, 51.99, 51.99, 0, 51.99,
    51.99, 51.99, 51.99, 0,
    NULL, NULL, NULL, 0, 1, 1886
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 887), N'01', N'01000359', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 1887
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 888), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 1888
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 889), N'01', N'01001684', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 1889
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 890), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1890
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 891), N'01', N'01000090', 1,
    41.7, 41.7, 41.7, 0, 41.7,
    41.7, 41.7, 41.7, 0,
    NULL, NULL, NULL, 0, 1, 1891
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 892), N'01', N'01000090', 2,
    41.7, 41.7, 83.4, 0, 83.4,
    41.7, 83.4, 83.4, 0,
    NULL, NULL, NULL, 0, 1, 1892
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 893), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 1893
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 894), N'01', N'01001927', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 1894
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 895), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1895
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 896), N'01', N'01001442', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1896
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 897), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1897
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 898), N'01', N'01002364', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1898
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 899), N'01', N'01002364', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1899
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 900), N'01', N'01000358', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 1900
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 901), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 1901
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 902), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1902
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 903), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 1903
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 904), N'01', N'05000014', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1904
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 905), N'01', N'01000387', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 1905
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 906), N'01', N'01001447', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1906
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 907), N'01', N'01000146', 2,
    47.99, 47.99, 95.98, 0, 95.98,
    47.99, 95.98, 95.98, 0,
    NULL, NULL, NULL, 0, 1, 1907
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 908), N'01', N'01001930', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1908
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 909), N'01', N'03000205', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 1909
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 910), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 1910
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 911), N'01', N'01001797', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1911
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 912), N'01', N'01001797', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1912
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 913), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1913
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 914), N'01', N'01000497', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 1914
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 915), N'01', N'01001264', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 1915
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 916), N'01', N'02000769', 1,
    91.34, 91.34, 91.34, 0, 91.34,
    91.34, 91.34, 91.34, 0,
    NULL, NULL, NULL, 0, 1, 1916
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 917), N'01', N'01001800', 1,
    28.25, 28.25, 28.25, 0, 28.25,
    28.25, 28.25, 28.25, 0,
    NULL, NULL, NULL, 0, 1, 1917
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 918), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1918
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 919), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 1919
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 920), N'01', N'01000389', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1920
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 921), N'01', N'01001930', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1921
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 922), N'01', N'01001531', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1922
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 923), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1923
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 924), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1924
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 925), N'01', N'01002191', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 1925
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 926), N'01', N'01001444', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 1926
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 927), N'01', N'05000102', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1927
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 928), N'01', N'01000353', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 1928
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 929), N'01', N'01000607', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 1929
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 930), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1930
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 931), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 1931
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 932), N'01', N'03000176', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 1932
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 933), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1933
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 934), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1934
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 935), N'01', N'01001530', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 1935
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 936), N'01', N'01001486', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 1936
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 937), N'01', N'01001486', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 1937
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 938), N'01', N'09000021', 1,
    72.99, 72.99, 72.99, 0, 72.99,
    72.99, 72.99, 72.99, 0,
    NULL, NULL, NULL, 0, 1, 1938
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 939), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1939
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 940), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1940
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 941), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1941
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 942), N'01', N'03000183', 1,
    17.99, 17.99, 17.99, 0, 17.99,
    17.99, 17.99, 17.99, 0,
    NULL, NULL, NULL, 0, 1, 1942
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 943), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1943
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 944), N'01', N'03000191', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 1944
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 945), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1945
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 946), N'01', N'01000602', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 1946
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
    NULL, NULL, NULL, 0, 1, 1947
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 948), N'01', N'01002285', 1,
    30.09, 30.09, 30.09, 0, 30.09,
    30.09, 30.09, 30.09, 0,
    NULL, NULL, NULL, 0, 1, 1948
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 949), N'01', N'03000170', 1,
    68.99, 68.99, 68.99, 0, 68.99,
    68.99, 68.99, 68.99, 0,
    NULL, NULL, NULL, 0, 1, 1949
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 950), N'01', N'01001455', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 1950
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 951), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1951
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 952), N'01', N'01002173', 2,
    45.99, 45.99, 91.98, 0, 91.98,
    45.99, 91.98, 91.98, 0,
    NULL, NULL, NULL, 0, 1, 1952
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 953), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1953
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 954), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1954
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 955), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 1955
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 956), N'01', N'01002318', 1,
    30.79, 30.79, 30.79, 0, 30.79,
    30.79, 30.79, 30.79, 0,
    NULL, NULL, NULL, 0, 1, 1956
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 957), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 1957
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 958), N'01', N'01001309', 2,
    17.13, 17.13, 34.26, 0, 34.26,
    17.13, 34.26, 34.26, 0,
    NULL, NULL, NULL, 0, 1, 1958
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 959), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1959
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 960), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1960
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 961), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1961
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 962), N'01', N'01001383', 1,
    28.28, 28.28, 28.28, 0, 28.28,
    28.28, 28.28, 28.28, 0,
    NULL, NULL, NULL, 0, 1, 1962
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 963), N'01', N'01000543', 5,
    48.989999999999995, 48.989999999999995, 244.95, 0, 244.95,
    48.989999999999995, 244.95, 244.95, 0,
    NULL, NULL, NULL, 0, 1, 1963
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 964), N'01', N'01001589', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 1964
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 965), N'01', N'01002396', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1965
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 966), N'01', N'01002396', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 1966
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 967), N'01', N'03000144', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 1967
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 968), N'01', N'01001574', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 1968
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 969), N'01', N'01000816', 1,
    29.48, 29.48, 29.48, 0, 29.48,
    29.48, 29.48, 29.48, 0,
    NULL, NULL, NULL, 0, 1, 1969
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 970), N'01', N'01000816', 1,
    29.48, 29.48, 29.48, 0, 29.48,
    29.48, 29.48, 29.48, 0,
    NULL, NULL, NULL, 0, 1, 1970
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 971), N'01', N'01000816', 1,
    29.48, 29.48, 29.48, 0, 29.48,
    29.48, 29.48, 29.48, 0,
    NULL, NULL, NULL, 0, 1, 1971
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 972), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 1972
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 973), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1973
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 974), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 1974
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 975), N'01', N'01001766', 4,
    29.99, 29.99, 119.96, 0, 119.96,
    29.99, 119.96, 119.96, 0,
    NULL, NULL, NULL, 0, 1, 1975
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 976), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 1976
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 977), N'01', N'05000014', 1,
    15.39, 15.39, 15.39, 0, 15.39,
    15.39, 15.39, 15.39, 0,
    NULL, NULL, NULL, 0, 1, 1977
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 978), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 1978
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 979), N'01', N'03000169', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 1979
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 980), N'01', N'01000300', 3,
    33.24, 33.24, 99.72, 0, 99.72,
    33.24, 99.72, 99.72, 0,
    NULL, NULL, NULL, 0, 1, 1980
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 981), N'01', N'01000613', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 1981
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 982), N'01', N'01002444', 3,
    46.07, 46.07, 138.21, 0, 138.21,
    46.07, 138.21, 138.21, 0,
    NULL, NULL, NULL, 0, 1, 1982
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 983), N'01', N'01001748', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 1983
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 984), N'01', N'01001503', 1,
    20.99, 20.99, 20.99, 0, 20.99,
    20.99, 20.99, 20.99, 0,
    NULL, NULL, NULL, 0, 1, 1984
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 985), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1985
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 986), N'01', N'03000139', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 1986
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 987), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 1987
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 988), N'01', N'05000003', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 1988
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 989), N'01', N'01001270', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 1989
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 990), N'01', N'03000196', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 1990
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 991), N'01', N'03000284', 1,
    74.79, 74.79, 74.79, 0, 74.79,
    74.79, 74.79, 74.79, 0,
    NULL, NULL, NULL, 0, 1, 1991
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 992), N'01', N'01001506', 1,
    27.06, 27.06, 27.06, 0, 27.06,
    27.06, 27.06, 27.06, 0,
    NULL, NULL, NULL, 0, 1, 1992
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 993), N'01', N'01001506', 1,
    27.06, 27.06, 27.06, 0, 27.06,
    27.06, 27.06, 27.06, 0,
    NULL, NULL, NULL, 0, 1, 1993
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 994), N'01', N'01001506', 1,
    27.06, 27.06, 27.06, 0, 27.06,
    27.06, 27.06, 27.06, 0,
    NULL, NULL, NULL, 0, 1, 1994
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 995), N'01', N'01001506', 1,
    27.06, 27.06, 27.06, 0, 27.06,
    27.06, 27.06, 27.06, 0,
    NULL, NULL, NULL, 0, 1, 1995
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 996), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 1996
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 997), N'01', N'01001685', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 1997
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 998), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 1998
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 999), N'01', N'01002234', 1,
    34.84, 34.84, 34.84, 0, 34.84,
    34.84, 34.84, 34.84, 0,
    NULL, NULL, NULL, 0, 1, 1999
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 1000), N'01', N'01001452', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2000
);

    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH;
END;