/* ========================================
   用友U8发货单SQL - 明细分片
   单据号: FBA26020001-1
   本片明细: 999 条
   起始行号: 4001
   生成时间: 2026-03-31 13:19:29
   ======================================== */

-- 此为第 5 部分，共 5 部分

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
    @DLID, (@iDLsID + 0 + 1), N'01', N'01001526', 1,
    22.56, 22.56, 22.56, 0, 22.56,
    22.56, 22.56, 22.56, 0,
    NULL, NULL, NULL, 0, 1, 4001
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 2), N'01', N'01001526', 2,
    22.56, 22.56, 45.12, 0, 45.12,
    22.56, 45.12, 45.12, 0,
    NULL, NULL, NULL, 0, 1, 4002
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 3), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4003
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 4), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4004
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 5), N'01', N'01001589', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4005
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 6), N'01', N'01001306', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4006
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 7), N'01', N'01000354', 3,
    45.59, 45.59, 136.77, 0, 136.77,
    45.59, 136.77, 136.77, 0,
    NULL, NULL, NULL, 0, 1, 4007
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 8), N'01', N'01000354', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 4008
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 9), N'01', N'01001824', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 4009
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 10), N'01', N'03000135', 1,
    69.99, 69.99, 69.99, 0, 69.99,
    69.99, 69.99, 69.99, 0,
    NULL, NULL, NULL, 0, 1, 4010
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 11), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4011
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 12), N'01', N'01000021', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 4012
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 13), N'01', N'01002413', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4013
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 14), N'01', N'01002413', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4014
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 15), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4015
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 16), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 4016
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 17), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4017
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 18), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 4018
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 19), N'01', N'01001338', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 4019
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 20), N'01', N'01000390', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 4020
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 21), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 4021
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 22), N'01', N'05000106', 3,
    26.99, 26.99, 80.97, 0, 80.97,
    26.99, 80.97, 80.97, 0,
    NULL, NULL, NULL, 0, 1, 4022
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 23), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4023
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 24), N'01', N'02000780', 1,
    134.09, 134.09, 134.09, 0, 134.09,
    134.09, 134.09, 134.09, 0,
    NULL, NULL, NULL, 0, 1, 4024
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 25), N'01', N'01001417', 2,
    21.84, 21.84, 43.68, 0, 43.68,
    21.84, 43.68, 43.68, 0,
    NULL, NULL, NULL, 0, 1, 4025
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 26), N'01', N'01000385', 4,
    32.99, 32.99, 131.96, 0, 131.96,
    32.99, 131.96, 131.96, 0,
    NULL, NULL, NULL, 0, 1, 4026
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 27), N'01', N'01002011', 2,
    33.29, 33.29, 66.58, 0, 66.58,
    33.29, 66.58, 66.58, 0,
    NULL, NULL, NULL, 0, 1, 4027
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 28), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4028
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 29), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4029
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 30), N'01', N'07000007', 1,
    29.59, 29.59, 29.59, 0, 29.59,
    29.59, 29.59, 29.59, 0,
    NULL, NULL, NULL, 0, 1, 4030
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 31), N'01', N'03000144', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4031
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 32), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4032
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 33), N'01', N'01000495', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4033
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 34), N'01', N'03000165', 1,
    119.99, 119.99, 119.99, 0, 119.99,
    119.99, 119.99, 119.99, 0,
    NULL, NULL, NULL, 0, 1, 4034
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 35), N'01', N'01001503', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4035
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 36), N'01', N'01000641', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4036
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 37), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 4037
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 38), N'01', N'01001226', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 4038
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 39), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4039
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 40), N'01', N'01001955', 1,
    22.01, 22.01, 22.01, 0, 22.01,
    22.01, 22.01, 22.01, 0,
    NULL, NULL, NULL, 0, 1, 4040
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 41), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4041
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 42), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 4042
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 43), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4043
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 44), N'01', N'01000603', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4044
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 45), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4045
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 46), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4046
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 47), N'01', N'01001456', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4047
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 48), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 4048
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 49), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4049
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 50), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4050
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 51), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4051
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 52), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4052
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 53), N'01', N'01001137', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 4053
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 54), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4054
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 55), N'01', N'01001139', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4055
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 56), N'01', N'01002602', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 4056
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 57), N'01', N'08000002', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4057
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 58), N'01', N'01000361', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 4058
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 59), N'01', N'01001045', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4059
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 60), N'01', N'01001048', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4060
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 61), N'01', N'01000440', 2,
    46.99, 46.99, 93.98, 0, 93.98,
    46.99, 93.98, 93.98, 0,
    NULL, NULL, NULL, 0, 1, 4061
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 62), N'01', N'01001862', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4062
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 63), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4063
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 64), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4064
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 65), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4065
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 66), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4066
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 67), N'01', N'01002205', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4067
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 68), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 4068
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 69), N'01', N'01002297', 1,
    35.14, 35.14, 35.14, 0, 35.14,
    35.14, 35.14, 35.14, 0,
    NULL, NULL, NULL, 0, 1, 4069
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 70), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4070
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 71), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4071
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 72), N'01', N'01001773', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4072
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 73), N'01', N'01001906', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4073
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 74), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4074
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 75), N'01', N'01000850', 2,
    30.28, 30.28, 60.56, 0, 60.56,
    30.28, 60.56, 60.56, 0,
    NULL, NULL, NULL, 0, 1, 4075
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 76), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 4076
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 77), N'01', N'01001312', 1,
    21.84, 21.84, 21.84, 0, 21.84,
    21.84, 21.84, 21.84, 0,
    NULL, NULL, NULL, 0, 1, 4077
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 78), N'01', N'01002128', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 4078
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 79), N'01', N'01000498', 3,
    48.99, 48.99, 146.97, 0, 146.97,
    48.99, 146.97, 146.97, 0,
    NULL, NULL, NULL, 0, 1, 4079
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 80), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 4080
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 81), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 4081
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 82), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4082
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 83), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4083
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 84), N'01', N'01001081', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4084
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 85), N'01', N'03000217', 1,
    72.99, 72.99, 72.99, 0, 72.99,
    72.99, 72.99, 72.99, 0,
    NULL, NULL, NULL, 0, 1, 4085
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 86), N'01', N'05000001', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4086
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 87), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4087
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 88), N'01', N'01001765', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 4088
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 89), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4089
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 90), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4090
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 91), N'01', N'01000818', 4,
    28.16, 28.16, 112.64, 0, 112.64,
    28.16, 112.64, 112.64, 0,
    NULL, NULL, NULL, 0, 1, 4091
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 92), N'01', N'01000529', 1,
    25.89, 25.89, 25.89, 0, 25.89,
    25.89, 25.89, 25.89, 0,
    NULL, NULL, NULL, 0, 1, 4092
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 93), N'01', N'01000614', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4093
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 94), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4094
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 95), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 4095
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 96), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4096
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 97), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4097
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 98), N'01', N'01001574', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4098
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 99), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 4099
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 100), N'01', N'03000236', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 4100
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 101), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4101
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 102), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4102
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 103), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4103
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 104), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4104
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 105), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4105
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 106), N'01', N'01001878', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4106
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 107), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4107
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 108), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4108
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 109), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4109
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 110), N'01', N'01000127', 1,
    33.38, 33.38, 33.38, 0, 33.38,
    33.38, 33.38, 33.38, 0,
    NULL, NULL, NULL, 0, 1, 4110
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 111), N'01', N'01001533', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4111
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 112), N'01', N'08000009', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 4112
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 113), N'01', N'01001079', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4113
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 114), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 4114
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 115), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4115
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 116), N'01', N'01001530', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 4116
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 117), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4117
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 118), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4118
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 119), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4119
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 120), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4120
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 121), N'01', N'01002339', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 4121
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 122), N'01', N'01001745', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4122
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 123), N'01', N'01002688', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4123
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 124), N'01', N'01002688', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4124
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 125), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4125
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
    NULL, NULL, NULL, 0, 1, 4126
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 127), N'01', N'01001584', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4127
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 128), N'01', N'01001785', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 4128
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 129), N'01', N'01000437', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4129
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
    NULL, NULL, NULL, 0, 1, 4130
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 131), N'01', N'01000297', 1,
    20.99, 20.99, 20.99, 0, 20.99,
    20.99, 20.99, 20.99, 0,
    NULL, NULL, NULL, 0, 1, 4131
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 132), N'01', N'09000020', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4132
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 133), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 4133
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 134), N'01', N'01001112', 1,
    21.24, 21.24, 21.24, 0, 21.24,
    21.24, 21.24, 21.24, 0,
    NULL, NULL, NULL, 0, 1, 4134
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 135), N'01', N'03000284', 1,
    74.79, 74.79, 74.79, 0, 74.79,
    74.79, 74.79, 74.79, 0,
    NULL, NULL, NULL, 0, 1, 4135
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 136), N'01', N'03000069', 1,
    22.6, 22.6, 22.6, 0, 22.6,
    22.6, 22.6, 22.6, 0,
    NULL, NULL, NULL, 0, 1, 4136
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 137), N'01', N'01000515', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 4137
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 138), N'01', N'01001598', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 4138
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 139), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4139
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 140), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4140
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 141), N'01', N'01002875', 1,
    27.16, 27.16, 27.16, 0, 27.16,
    27.16, 27.16, 27.16, 0,
    NULL, NULL, NULL, 0, 1, 4141
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 142), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 4142
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 143), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4143
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 144), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4144
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 145), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 4145
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
    NULL, NULL, NULL, 0, 1, 4146
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 147), N'01', N'08000006', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4147
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 148), N'01', N'01001073', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4148
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 149), N'01', N'01001189', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 4149
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 150), N'01', N'01002687', 2,
    37.99, 37.99, 75.98, 0, 75.98,
    37.99, 75.98, 75.98, 0,
    NULL, NULL, NULL, 0, 1, 4150
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 151), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4151
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 152), N'01', N'01001084', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4152
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 153), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4153
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 154), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4154
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 155), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4155
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 156), N'01', N'10000001', 1,
    24.68, 24.68, 24.68, 0, 24.68,
    24.68, 24.68, 24.68, 0,
    NULL, NULL, NULL, 0, 1, 4156
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 157), N'01', N'01001091', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 4157
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 158), N'01', N'01000297', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4158
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 159), N'01', N'07000009', 1,
    29.59, 29.59, 29.59, 0, 29.59,
    29.59, 29.59, 29.59, 0,
    NULL, NULL, NULL, 0, 1, 4159
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 160), N'01', N'03000206', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 4160
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 161), N'01', N'01000495', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4161
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 162), N'01', N'01001932', 6,
    34.19, 34.19, 205.14, 0, 205.14,
    34.19, 205.14, 205.14, 0,
    NULL, NULL, NULL, 0, 1, 4162
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 163), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4163
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 164), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 4164
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 165), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4165
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 166), N'01', N'01001037', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 4166
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 167), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4167
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 168), N'01', N'05000078', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 4168
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 169), N'01', N'01001862', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4169
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 170), N'01', N'01002261', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4170
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 171), N'01', N'01000498', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4171
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 172), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4172
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 173), N'01', N'07000005', 1,
    27.92, 27.92, 27.92, 0, 27.92,
    27.92, 27.92, 27.92, 0,
    NULL, NULL, NULL, 0, 1, 4173
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 174), N'01', N'07000005', 1,
    27.92, 27.92, 27.92, 0, 27.92,
    27.92, 27.92, 27.92, 0,
    NULL, NULL, NULL, 0, 1, 4174
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 175), N'01', N'01001143', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4175
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 176), N'01', N'01001560', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4176
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 177), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 4177
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 178), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 4178
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 179), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4179
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 180), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 4180
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 181), N'01', N'05000011', 7,
    19.59, 19.59, 137.13, 0, 137.13,
    19.59, 137.13, 137.13, 0,
    NULL, NULL, NULL, 0, 1, 4181
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 182), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4182
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 183), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4183
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 184), N'01', N'01000440', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4184
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 185), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4185
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 186), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 4186
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 187), N'01', N'01001264', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4187
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 188), N'01', N'01001608', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 4188
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 189), N'01', N'03000086', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4189
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 190), N'01', N'01002388', 1,
    37.39, 37.39, 37.39, 0, 37.39,
    37.39, 37.39, 37.39, 0,
    NULL, NULL, NULL, 0, 1, 4190
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 191), N'01', N'01002206', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4191
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 192), N'01', N'01002205', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4192
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 193), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4193
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 194), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 4194
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 195), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4195
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 196), N'01', N'01000037', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4196
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 197), N'01', N'01002392', 1,
    54.99, 54.99, 54.99, 0, 54.99,
    54.99, 54.99, 54.99, 0,
    NULL, NULL, NULL, 0, 1, 4197
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 198), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 4198
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 199), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4199
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 200), N'01', N'01001183', 1,
    17.13, 17.13, 17.13, 0, 17.13,
    17.13, 17.13, 17.13, 0,
    NULL, NULL, NULL, 0, 1, 4200
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 201), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4201
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 202), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 4202
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 203), N'01', N'01002394', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 4203
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 204), N'01', N'01002394', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 4204
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 205), N'01', N'01001771', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 4205
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 206), N'01', N'01000153', 2,
    25.49, 25.49, 50.98, 0, 50.98,
    25.49, 50.98, 50.98, 0,
    NULL, NULL, NULL, 0, 1, 4206
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 207), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4207
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 208), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4208
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 209), N'01', N'01000104', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4209
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 210), N'01', N'01002603', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4210
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 211), N'01', N'01002603', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4211
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 212), N'01', N'01002010', 2,
    31.49, 31.49, 62.98, 0, 62.98,
    31.49, 62.98, 62.98, 0,
    NULL, NULL, NULL, 0, 1, 4212
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 213), N'01', N'01002444', 1,
    47.49, 47.49, 47.49, 0, 47.49,
    47.49, 47.49, 47.49, 0,
    NULL, NULL, NULL, 0, 1, 4213
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 214), N'01', N'05000003', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4214
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 215), N'01', N'01002011', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 4215
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 216), N'01', N'01001612', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4216
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 217), N'01', N'01001452', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4217
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 218), N'01', N'01001384', 1,
    25.98, 25.98, 25.98, 0, 25.98,
    25.98, 25.98, 25.98, 0,
    NULL, NULL, NULL, 0, 1, 4218
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 219), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4219
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 220), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4220
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 221), N'01', N'01002243', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 4221
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 222), N'01', N'01000892', 2,
    40.84, 40.84, 81.68, 0, 81.68,
    40.84, 81.68, 81.68, 0,
    NULL, NULL, NULL, 0, 1, 4222
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 223), N'01', N'01000364', 2,
    39.89, 39.89, 79.78, 0, 79.78,
    39.89, 79.78, 79.78, 0,
    NULL, NULL, NULL, 0, 1, 4223
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 224), N'01', N'03000153', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 4224
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 225), N'01', N'03000221', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 4225
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 226), N'01', N'01000517', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4226
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 227), N'01', N'01000436', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 4227
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 228), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4228
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 229), N'01', N'01001956', 2,
    31.34, 31.34, 62.68, 0, 62.68,
    31.34, 62.68, 62.68, 0,
    NULL, NULL, NULL, 0, 1, 4229
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 230), N'01', N'03000176', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4230
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 231), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4231
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 232), N'01', N'01001384', 2,
    25.98, 25.98, 51.96, 0, 51.96,
    25.98, 51.96, 51.96, 0,
    NULL, NULL, NULL, 0, 1, 4232
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 233), N'01', N'01002185', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4233
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 234), N'01', N'01002282', 2,
    30.47, 30.47, 60.94, 0, 60.94,
    30.47, 60.94, 60.94, 0,
    NULL, NULL, NULL, 0, 1, 4234
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 235), N'01', N'01000082', 1,
    28.79, 28.79, 28.79, 0, 28.79,
    28.79, 28.79, 28.79, 0,
    NULL, NULL, NULL, 0, 1, 4235
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 236), N'01', N'01000616', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4236
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 237), N'01', N'01000288', 2,
    42.74, 42.74, 85.48, 0, 85.48,
    42.74, 85.48, 85.48, 0,
    NULL, NULL, NULL, 0, 1, 4237
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 238), N'01', N'01000361', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4238
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 239), N'01', N'01000194', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4239
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 240), N'01', N'01002635', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4240
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 241), N'01', N'01001688', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4241
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 242), N'01', N'01000360', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4242
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 243), N'01', N'01001337', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4243
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 244), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 4244
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 245), N'01', N'05000011', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 4245
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 246), N'01', N'01000573', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 4246
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 247), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 4247
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 248), N'01', N'03000198', 1,
    115.99, 115.99, 115.99, 0, 115.99,
    115.99, 115.99, 115.99, 0,
    NULL, NULL, NULL, 0, 1, 4248
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 249), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4249
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 250), N'01', N'03000032', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4250
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 251), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4251
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 252), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4252
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 253), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4253
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
    NULL, NULL, NULL, 0, 1, 4254
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 255), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4255
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 256), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4256
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 257), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 4257
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 258), N'01', N'01001029', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 4258
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 259), N'01', N'01000350', 2,
    44.99, 44.99, 89.98, 0, 89.98,
    44.99, 89.98, 89.98, 0,
    NULL, NULL, NULL, 0, 1, 4259
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 260), N'01', N'01001192', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4260
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 261), N'01', N'01000406', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4261
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 262), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4262
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 263), N'01', N'07000005', 1,
    27.92, 27.92, 27.92, 0, 27.92,
    27.92, 27.92, 27.92, 0,
    NULL, NULL, NULL, 0, 1, 4263
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 264), N'01', N'01000331', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 4264
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 265), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4265
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 266), N'01', N'01001532', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 4266
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 267), N'01', N'01001568', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 4267
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 268), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 4268
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 269), N'01', N'01002374', 2,
    39.89, 39.89, 79.78, 0, 79.78,
    39.89, 79.78, 79.78, 0,
    NULL, NULL, NULL, 0, 1, 4269
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 270), N'01', N'01001234', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 4270
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 271), N'01', N'01001855', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 4271
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 272), N'01', N'01001532', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4272
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 273), N'01', N'01002215', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4273
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 274), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4274
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 275), N'01', N'01001143', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4275
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 276), N'01', N'01001506', 4,
    33.24, 33.24, 132.96, 0, 132.96,
    33.24, 132.96, 132.96, 0,
    NULL, NULL, NULL, 0, 1, 4276
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 277), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4277
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
    NULL, NULL, NULL, 0, 1, 4278
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
    NULL, NULL, NULL, 0, 1, 4279
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
    NULL, NULL, NULL, 0, 1, 4280
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 281), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4281
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 282), N'01', N'01001815', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4282
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 283), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4283
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 284), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4284
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 285), N'01', N'01001048', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4285
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 286), N'01', N'05000011', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 4286
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 287), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4287
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 288), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4288
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 289), N'01', N'01000331', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4289
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 290), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4290
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 291), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 4291
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 292), N'01', N'09000020', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4292
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 293), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4293
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 294), N'01', N'01001569', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4294
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 295), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4295
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 296), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4296
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 297), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 4297
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 298), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4298
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 299), N'01', N'01001277', 3,
    32.29, 32.29, 96.87, 0, 96.87,
    32.29, 96.87, 96.87, 0,
    NULL, NULL, NULL, 0, 1, 4299
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 300), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4300
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 301), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4301
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 302), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4302
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 303), N'01', N'01000587', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4303
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 304), N'01', N'01000587', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4304
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 305), N'01', N'03000127', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4305
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 306), N'01', N'01001107', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4306
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 307), N'01', N'12000003', 1,
    16.98, 16.98, 16.98, 0, 16.98,
    16.98, 16.98, 16.98, 0,
    NULL, NULL, NULL, 0, 1, 4307
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 308), N'01', N'01001505', 1,
    23.79, 23.79, 23.79, 0, 23.79,
    23.79, 23.79, 23.79, 0,
    NULL, NULL, NULL, 0, 1, 4308
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 309), N'01', N'01001092', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4309
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 310), N'01', N'03000205', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 4310
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 311), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4311
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 312), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4312
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 313), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4313
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 314), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4314
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 315), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4315
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 316), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4316
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 317), N'01', N'01001598', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4317
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 318), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4318
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 319), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4319
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 320), N'01', N'01001813', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 4320
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 321), N'01', N'01002680', 2,
    15.67, 15.67, 31.34, 0, 31.34,
    15.67, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 4321
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 322), N'01', N'01001826', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4322
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 323), N'01', N'03000196', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4323
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 324), N'01', N'01000617', 1,
    23.09, 23.09, 23.09, 0, 23.09,
    23.09, 23.09, 23.09, 0,
    NULL, NULL, NULL, 0, 1, 4324
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 325), N'01', N'03000126', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 4325
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 326), N'01', N'03000107', 1,
    159.99, 159.99, 159.99, 0, 159.99,
    159.99, 159.99, 159.99, 0,
    NULL, NULL, NULL, 0, 1, 4326
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 327), N'01', N'07000006', 1,
    36.8, 36.8, 36.8, 0, 36.8,
    36.8, 36.8, 36.8, 0,
    NULL, NULL, NULL, 0, 1, 4327
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 328), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4328
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 329), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4329
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 330), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4330
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 331), N'01', N'01001904', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4331
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 332), N'01', N'01002374', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4332
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 333), N'01', N'01000575', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 4333
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 334), N'01', N'01001379', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4334
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 335), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 4335
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 336), N'01', N'01001757', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4336
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 337), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4337
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 338), N'01', N'01001955', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 4338
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 339), N'01', N'05000012', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 4339
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 340), N'01', N'01002215', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4340
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 341), N'01', N'03000095', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 4341
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 342), N'01', N'01001798', 1,
    19.94, 19.94, 19.94, 0, 19.94,
    19.94, 19.94, 19.94, 0,
    NULL, NULL, NULL, 0, 1, 4342
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 343), N'01', N'05000011', 4,
    19.99, 19.99, 79.96, 0, 79.96,
    19.99, 79.96, 79.96, 0,
    NULL, NULL, NULL, 0, 1, 4343
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 344), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4344
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 345), N'01', N'01001487', 1,
    27.35, 27.35, 27.35, 0, 27.35,
    27.35, 27.35, 27.35, 0,
    NULL, NULL, NULL, 0, 1, 4345
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 346), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4346
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 347), N'01', N'05000006', 2,
    19.54, 19.54, 39.08, 0, 39.08,
    19.54, 39.08, 39.08, 0,
    NULL, NULL, NULL, 0, 1, 4347
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 348), N'01', N'01002239', 1,
    52.24, 52.24, 52.24, 0, 52.24,
    52.24, 52.24, 52.24, 0,
    NULL, NULL, NULL, 0, 1, 4348
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 349), N'01', N'05000011', 4,
    19.99, 19.99, 79.96, 0, 79.96,
    19.99, 79.96, 79.96, 0,
    NULL, NULL, NULL, 0, 1, 4349
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 350), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4350
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 351), N'01', N'01000603', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4351
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 352), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4352
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 353), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4353
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 354), N'01', N'05000112', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4354
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 355), N'01', N'01001109', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 4355
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 356), N'01', N'01001918', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4356
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 357), N'01', N'01001902', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4357
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 358), N'01', N'03000191', 1,
    52.99, 52.99, 52.99, 0, 52.99,
    52.99, 52.99, 52.99, 0,
    NULL, NULL, NULL, 0, 1, 4358
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 359), N'01', N'01000338', 2,
    54.99, 54.99, 109.98, 0, 109.98,
    54.99, 109.98, 109.98, 0,
    NULL, NULL, NULL, 0, 1, 4359
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 360), N'01', N'01000338', 1,
    54.99, 54.99, 54.99, 0, 54.99,
    54.99, 54.99, 54.99, 0,
    NULL, NULL, NULL, 0, 1, 4360
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 361), N'01', N'01000338', 1,
    54.99, 54.99, 54.99, 0, 54.99,
    54.99, 54.99, 54.99, 0,
    NULL, NULL, NULL, 0, 1, 4361
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 362), N'01', N'01000289', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 4362
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 363), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4363
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 364), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4364
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 365), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4365
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 366), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4366
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 367), N'01', N'01002611', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 4367
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 368), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4368
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 369), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4369
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 370), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 4370
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 371), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 4371
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 372), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 4372
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 373), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 4373
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 374), N'01', N'01001590', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4374
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 375), N'01', N'01001381', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4375
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 376), N'01', N'01002258', 2,
    42.99, 42.99, 85.98, 0, 85.98,
    42.99, 85.98, 85.98, 0,
    NULL, NULL, NULL, 0, 1, 4376
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 377), N'01', N'01000495', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4377
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 378), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4378
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 379), N'01', N'01001855', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4379
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 380), N'01', N'01001383', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4380
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 381), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4381
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 382), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4382
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 383), N'01', N'03000196', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4383
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 384), N'01', N'05000045', 1,
    16.99, 16.99, 16.99, 0, 16.99,
    16.99, 16.99, 16.99, 0,
    NULL, NULL, NULL, 0, 1, 4384
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 385), N'01', N'01000153', 1,
    25.49, 25.49, 25.49, 0, 25.49,
    25.49, 25.49, 25.49, 0,
    NULL, NULL, NULL, 0, 1, 4385
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 386), N'01', N'01001089', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 4386
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 387), N'01', N'01001089', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 4387
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 388), N'01', N'01001855', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4388
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 389), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4389
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 390), N'01', N'01000439', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4390
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 391), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4391
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 392), N'01', N'01000385', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4392
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 393), N'01', N'01002168', 4,
    42.99, 42.99, 171.96, 0, 171.96,
    42.99, 171.96, 171.96, 0,
    NULL, NULL, NULL, 0, 1, 4393
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 394), N'01', N'01001459', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 4394
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 395), N'01', N'01001553', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4395
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 396), N'01', N'01001026', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4396
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 397), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4397
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
    NULL, NULL, NULL, 0, 1, 4398
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 399), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 4399
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 400), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4400
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 401), N'01', N'01001990', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4401
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 402), N'01', N'01002361', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 4402
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 403), N'01', N'01002361', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 4403
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 404), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4404
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 405), N'01', N'01000266', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4405
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 406), N'01', N'01000473', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 4406
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 407), N'01', N'01002361', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 4407
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 408), N'01', N'01001570', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4408
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 409), N'01', N'01001211', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 4409
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 410), N'01', N'07000005', 1,
    27.92, 27.92, 27.92, 0, 27.92,
    27.92, 27.92, 27.92, 0,
    NULL, NULL, NULL, 0, 1, 4410
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 411), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4411
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 412), N'01', N'02000741', 1,
    58.49, 58.49, 58.49, 0, 58.49,
    58.49, 58.49, 58.49, 0,
    NULL, NULL, NULL, 0, 1, 4412
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 413), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4413
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 414), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 4414
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 415), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4415
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 416), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4416
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 417), N'01', N'01001598', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4417
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 418), N'01', N'01000167', 1,
    50.34, 50.34, 50.34, 0, 50.34,
    50.34, 50.34, 50.34, 0,
    NULL, NULL, NULL, 0, 1, 4418
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 419), N'01', N'01000039', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4419
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 420), N'01', N'03000284', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 4420
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 421), N'01', N'05000078', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 4421
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 422), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4422
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 423), N'01', N'01001084', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4423
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 424), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 4424
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 425), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4425
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 426), N'01', N'01002347', 2,
    44.64, 44.64, 89.28, 0, 89.28,
    44.64, 89.28, 89.28, 0,
    NULL, NULL, NULL, 0, 1, 4426
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 427), N'01', N'01001085', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4427
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 428), N'01', N'01001442', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4428
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 429), N'01', N'01001442', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4429
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 430), N'01', N'01001742', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4430
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 431), N'01', N'07000001', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4431
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 432), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4432
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 433), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4433
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
    NULL, NULL, NULL, 0, 1, 4434
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 435), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 4435
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 436), N'01', N'01001825', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 4436
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 437), N'01', N'01000784', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4437
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 438), N'01', N'01002226', 2,
    46.99, 46.99, 93.98, 0, 93.98,
    46.99, 93.98, 93.98, 0,
    NULL, NULL, NULL, 0, 1, 4438
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 439), N'01', N'01001116', 3,
    28.28, 28.28, 84.84, 0, 84.84,
    28.28, 84.84, 84.84, 0,
    NULL, NULL, NULL, 0, 1, 4439
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 440), N'01', N'01001074', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4440
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 441), N'01', N'01001184', 1,
    21.42, 21.42, 21.42, 0, 21.42,
    21.42, 21.42, 21.42, 0,
    NULL, NULL, NULL, 0, 1, 4441
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 442), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4442
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 443), N'01', N'01001564', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 4443
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 444), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 4444
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 445), N'01', N'01002305', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 4445
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 446), N'01', N'01001231', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 4446
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 447), N'01', N'01002663', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4447
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 448), N'01', N'01002862', 1,
    26.83, 26.83, 26.83, 0, 26.83,
    26.83, 26.83, 26.83, 0,
    NULL, NULL, NULL, 0, 1, 4448
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 449), N'01', N'01002305', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 4449
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 450), N'01', N'01002388', 1,
    41.79, 41.79, 41.79, 0, 41.79,
    41.79, 41.79, 41.79, 0,
    NULL, NULL, NULL, 0, 1, 4450
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 451), N'01', N'01001530', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4451
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 452), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4452
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 453), N'01', N'01001942', 3,
    33.99, 33.99, 101.97, 0, 101.97,
    33.99, 101.97, 101.97, 0,
    NULL, NULL, NULL, 0, 1, 4453
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 454), N'01', N'01000761', 2,
    59.99, 59.99, 119.98, 0, 119.98,
    59.99, 119.98, 119.98, 0,
    NULL, NULL, NULL, 0, 1, 4454
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 455), N'01', N'01001764', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 4455
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 456), N'01', N'01002193', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 4456
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 457), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4457
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 458), N'01', N'03000086', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4458
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 459), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4459
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 460), N'01', N'01001455', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 4460
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 461), N'01', N'01001600', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4461
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 462), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 4462
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 463), N'01', N'07000003', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4463
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 464), N'01', N'07000003', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4464
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 465), N'01', N'01001134', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4465
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 466), N'01', N'01000619', 1,
    25.89, 25.89, 25.89, 0, 25.89,
    25.89, 25.89, 25.89, 0,
    NULL, NULL, NULL, 0, 1, 4466
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 467), N'01', N'01001037', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 4467
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 468), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4468
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 469), N'01', N'01001221', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 4469
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 470), N'01', N'03000206', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 4470
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 471), N'01', N'01001329', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4471
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 472), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4472
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 473), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4473
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 474), N'01', N'01001953', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4474
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 475), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4475
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 476), N'01', N'01000473', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4476
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 477), N'01', N'05000100', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4477
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 478), N'01', N'01000193', 1,
    28.79, 28.79, 28.79, 0, 28.79,
    28.79, 28.79, 28.79, 0,
    NULL, NULL, NULL, 0, 1, 4478
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 479), N'01', N'01000613', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4479
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 480), N'01', N'01001275', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 4480
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 481), N'01', N'01001816', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4481
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 482), N'01', N'01001610', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 4482
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 483), N'01', N'01002215', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4483
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 484), N'01', N'05000007', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4484
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 485), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4485
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 486), N'01', N'01001865', 2,
    31.49, 31.49, 62.98, 0, 62.98,
    31.49, 62.98, 62.98, 0,
    NULL, NULL, NULL, 0, 1, 4486
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 487), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4487
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 488), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4488
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 489), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4489
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 490), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4490
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 491), N'01', N'01002212', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 4491
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 492), N'01', N'01001842', 2,
    31.67, 31.67, 63.34, 0, 63.34,
    31.67, 63.34, 63.34, 0,
    NULL, NULL, NULL, 0, 1, 4492
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 493), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 4493
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 494), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 4494
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 495), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4495
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 496), N'01', N'01002194', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4496
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 497), N'01', N'07000007', 1,
    27.96, 27.96, 27.96, 0, 27.96,
    27.96, 27.96, 27.96, 0,
    NULL, NULL, NULL, 0, 1, 4497
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 498), N'01', N'01001457', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4498
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 499), N'01', N'01002175', 2,
    39.99, 39.99, 79.98, 0, 79.98,
    39.99, 79.98, 79.98, 0,
    NULL, NULL, NULL, 0, 1, 4499
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 500), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4500
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 501), N'01', N'01000586', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4501
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 502), N'01', N'01001728', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 4502
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 503), N'01', N'01001536', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4503
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 504), N'01', N'01002300', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 4504
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 505), N'01', N'01002308', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4505
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 506), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4506
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 507), N'01', N'01001742', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 4507
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 508), N'01', N'01000516', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4508
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 509), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4509
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 510), N'01', N'01001332', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4510
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 511), N'01', N'01002008', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 4511
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 512), N'01', N'01001865', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 4512
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 513), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 4513
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 514), N'01', N'03000056', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 4514
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 515), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4515
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 516), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4516
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 517), N'01', N'01000496', 2,
    44.99, 44.99, 89.98, 0, 89.98,
    44.99, 89.98, 89.98, 0,
    NULL, NULL, NULL, 0, 1, 4517
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 518), N'01', N'01001486', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 4518
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 519), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4519
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 520), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4520
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 521), N'01', N'03000165', 1,
    119.99, 119.99, 119.99, 0, 119.99,
    119.99, 119.99, 119.99, 0,
    NULL, NULL, NULL, 0, 1, 4521
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 522), N'01', N'03000140', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4522
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 523), N'01', N'01000219', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 4523
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 524), N'01', N'01000337', 2,
    39.99, 39.99, 79.98, 0, 79.98,
    39.99, 79.98, 79.98, 0,
    NULL, NULL, NULL, 0, 1, 4524
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 525), N'01', N'01001154', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 4525
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 526), N'01', N'01001333', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4526
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 527), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4527
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 528), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4528
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 529), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4529
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 530), N'01', N'01001029', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4530
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 531), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 4531
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 532), N'01', N'01001824', 2,
    30.59, 30.59, 61.18, 0, 61.18,
    30.59, 61.18, 61.18, 0,
    NULL, NULL, NULL, 0, 1, 4532
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 533), N'01', N'01000518', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4533
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 534), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4534
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 535), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4535
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 536), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4536
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 537), N'01', N'01000086', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 4537
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 538), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4538
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 539), N'01', N'03000151', 1,
    139.99, 139.99, 139.99, 0, 139.99,
    139.99, 139.99, 139.99, 0,
    NULL, NULL, NULL, 0, 1, 4539
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
    NULL, NULL, NULL, 0, 1, 4540
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 541), N'01', N'03000206', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 4541
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 542), N'01', N'01001600', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4542
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 543), N'01', N'01001000', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4543
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 544), N'01', N'01001318', 1,
    26.16, 26.16, 26.16, 0, 26.16,
    26.16, 26.16, 26.16, 0,
    NULL, NULL, NULL, 0, 1, 4544
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 545), N'01', N'01001510', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4545
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 546), N'01', N'01000440', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4546
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 547), N'01', N'01001931', 1,
    33.79, 33.79, 33.79, 0, 33.79,
    33.79, 33.79, 33.79, 0,
    NULL, NULL, NULL, 0, 1, 4547
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 548), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 4548
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 549), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4549
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 550), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4550
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 551), N'01', N'01000266', 1,
    28.51, 28.51, 28.51, 0, 28.51,
    28.51, 28.51, 28.51, 0,
    NULL, NULL, NULL, 0, 1, 4551
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 552), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4552
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 553), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 4553
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 554), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 4554
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 555), N'01', N'01001414', 1,
    19.7, 19.7, 19.7, 0, 19.7,
    19.7, 19.7, 19.7, 0,
    NULL, NULL, NULL, 0, 1, 4555
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 556), N'01', N'01000458', 1,
    39.59, 39.59, 39.59, 0, 39.59,
    39.59, 39.59, 39.59, 0,
    NULL, NULL, NULL, 0, 1, 4556
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 557), N'01', N'01001568', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4557
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 558), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4558
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 559), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4559
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 560), N'01', N'01000644', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4560
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 561), N'01', N'01001822', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 4561
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 562), N'01', N'01000438', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 4562
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 563), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4563
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 564), N'01', N'01001878', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4564
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 565), N'01', N'01001878', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4565
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 566), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 4566
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 567), N'01', N'01002205', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4567
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 568), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4568
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 569), N'01', N'01001270', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4569
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 570), N'01', N'01002441', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 4570
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 571), N'01', N'01000357', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4571
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 572), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4572
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 573), N'01', N'01001940', 1,
    29.69, 29.69, 29.69, 0, 29.69,
    29.69, 29.69, 29.69, 0,
    NULL, NULL, NULL, 0, 1, 4573
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 574), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4574
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 575), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4575
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 576), N'01', N'01001774', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4576
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 577), N'01', N'01002177', 3,
    45.99, 45.99, 137.97, 0, 137.97,
    45.99, 137.97, 137.97, 0,
    NULL, NULL, NULL, 0, 1, 4577
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 578), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4578
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 579), N'01', N'01002361', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 4579
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 580), N'01', N'05000010', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4580
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 581), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4581
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 582), N'01', N'02000697', 1,
    43.19, 43.19, 43.19, 0, 43.19,
    43.19, 43.19, 43.19, 0,
    NULL, NULL, NULL, 0, 1, 4582
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 583), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4583
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 584), N'01', N'01001568', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4584
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 585), N'01', N'01001165', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 4585
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 586), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4586
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 587), N'01', N'01000318', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 4587
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 588), N'01', N'01001026', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4588
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 589), N'01', N'01002414', 1,
    55.09, 55.09, 55.09, 0, 55.09,
    55.09, 55.09, 55.09, 0,
    NULL, NULL, NULL, 0, 1, 4589
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 590), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4590
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 591), N'01', N'01001932', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 4591
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 592), N'01', N'03000211', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 4592
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 593), N'01', N'12000001', 1,
    19.98, 19.98, 19.98, 0, 19.98,
    19.98, 19.98, 19.98, 0,
    NULL, NULL, NULL, 0, 1, 4593
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 594), N'01', N'01002206', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4594
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 595), N'01', N'01002206', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4595
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 596), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4596
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 597), N'01', N'01001711', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4597
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 598), N'01', N'01000616', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4598
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 599), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4599
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 600), N'01', N'01000616', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4600
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 601), N'01', N'01001098', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4601
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 602), N'01', N'01001098', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4602
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 603), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4603
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 604), N'01', N'03000150', 1,
    69.99, 69.99, 69.99, 0, 69.99,
    69.99, 69.99, 69.99, 0,
    NULL, NULL, NULL, 0, 1, 4604
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 605), N'01', N'01002388', 1,
    41.79, 41.79, 41.79, 0, 41.79,
    41.79, 41.79, 41.79, 0,
    NULL, NULL, NULL, 0, 1, 4605
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 606), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4606
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 607), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4607
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 608), N'01', N'01001930', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4608
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 609), N'01', N'01002298', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 4609
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 610), N'01', N'01001091', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4610
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 611), N'01', N'12000002', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4611
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 612), N'01', N'08000004', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 4612
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 613), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 4613
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 614), N'01', N'01002588', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4614
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 615), N'01', N'01000614', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4615
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 616), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4616
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 617), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4617
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 618), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4618
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 619), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4619
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 620), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4620
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 621), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4621
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 622), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4622
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 623), N'01', N'01001026', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4623
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 624), N'01', N'01000602', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4624
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 625), N'01', N'01000151', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 4625
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 626), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4626
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 627), N'01', N'01001192', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 4627
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 628), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4628
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 629), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4629
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 630), N'01', N'05000073', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4630
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 631), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 4631
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 632), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4632
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 633), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4633
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 634), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4634
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 635), N'01', N'01000852', 2,
    35.79, 35.79, 71.58, 0, 71.58,
    35.79, 71.58, 71.58, 0,
    NULL, NULL, NULL, 0, 1, 4635
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 636), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4636
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 637), N'01', N'01000439', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4637
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 638), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4638
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 639), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4639
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 640), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4640
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 641), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4641
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 642), N'01', N'01000022', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4642
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 643), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 4643
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 644), N'01', N'03000284', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 4644
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 645), N'01', N'03000160', 1,
    115.99, 115.99, 115.99, 0, 115.99,
    115.99, 115.99, 115.99, 0,
    NULL, NULL, NULL, 0, 1, 4645
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 646), N'01', N'05000112', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4646
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 647), N'01', N'01001505', 1,
    24.85, 24.85, 24.85, 0, 24.85,
    24.85, 24.85, 24.85, 0,
    NULL, NULL, NULL, 0, 1, 4647
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 648), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4648
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 649), N'01', N'09000020', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4649
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 650), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4650
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 651), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4651
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 652), N'01', N'05000073', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4652
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 653), N'01', N'01001955', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 4653
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 654), N'01', N'03000091', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4654
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 655), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4655
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 656), N'01', N'01001192', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4656
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 657), N'01', N'01000150', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 4657
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 658), N'01', N'01001866', 3,
    33.99, 33.99, 101.97, 0, 101.97,
    33.99, 101.97, 101.97, 0,
    NULL, NULL, NULL, 0, 1, 4658
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 659), N'01', N'12000002', 1,
    16.98, 16.98, 16.98, 0, 16.98,
    16.98, 16.98, 16.98, 0,
    NULL, NULL, NULL, 0, 1, 4659
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 660), N'01', N'01000105', 1,
    52.24, 52.24, 52.24, 0, 52.24,
    52.24, 52.24, 52.24, 0,
    NULL, NULL, NULL, 0, 1, 4660
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 661), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 4661
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 662), N'01', N'05000034', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 4662
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 663), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 4663
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 664), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4664
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 665), N'01', N'01001816', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 4665
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 666), N'01', N'07000003', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4666
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 667), N'01', N'07000003', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4667
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 668), N'01', N'01001043', 1,
    21.84, 21.84, 21.84, 0, 21.84,
    21.84, 21.84, 21.84, 0,
    NULL, NULL, NULL, 0, 1, 4668
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 669), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4669
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 670), N'01', N'01000760', 2,
    45.99, 45.99, 91.98, 0, 91.98,
    45.99, 91.98, 91.98, 0,
    NULL, NULL, NULL, 0, 1, 4670
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 671), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4671
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 672), N'01', N'07000003', 3,
    24.99, 24.99, 74.97, 0, 74.97,
    24.99, 74.97, 74.97, 0,
    NULL, NULL, NULL, 0, 1, 4672
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 673), N'01', N'01000777', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4673
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 674), N'01', N'01002682', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4674
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 675), N'01', N'03000176', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4675
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 676), N'01', N'01001028', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4676
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 677), N'01', N'01000359', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 4677
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
    NULL, NULL, NULL, 0, 1, 4678
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
    NULL, NULL, NULL, 0, 1, 4679
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 680), N'01', N'01002429', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4680
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 681), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4681
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 682), N'01', N'01001800', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 4682
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 683), N'01', N'01001800', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 4683
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 684), N'01', N'01001048', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4684
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 685), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4685
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 686), N'01', N'01000298', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 4686
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 687), N'01', N'01000357', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4687
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 688), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4688
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 689), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 4689
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 690), N'01', N'01001929', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4690
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 691), N'01', N'01000516', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4691
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 692), N'01', N'01001921', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4692
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 693), N'01', N'02000781', 1,
    134.54, 134.54, 134.54, 0, 134.54,
    134.54, 134.54, 134.54, 0,
    NULL, NULL, NULL, 0, 1, 4693
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 694), N'01', N'01000605', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4694
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 695), N'01', N'01002258', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 4695
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 696), N'01', N'01000878', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 4696
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 697), N'01', N'01001092', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4697
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 698), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4698
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 699), N'01', N'05000011', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 4699
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 700), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4700
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 701), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4701
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 702), N'01', N'01001826', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4702
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 703), N'01', N'01001487', 1,
    27.35, 27.35, 27.35, 0, 27.35,
    27.35, 27.35, 27.35, 0,
    NULL, NULL, NULL, 0, 1, 4703
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 704), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4704
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 705), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4705
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 706), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 4706
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 707), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4707
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 708), N'01', N'02000713', 1,
    58.49, 58.49, 58.49, 0, 58.49,
    58.49, 58.49, 58.49, 0,
    NULL, NULL, NULL, 0, 1, 4708
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 709), N'01', N'01000758', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 4709
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 710), N'01', N'01002589', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4710
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 711), N'01', N'01001768', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 4711
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 712), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4712
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 713), N'01', N'01001768', 4,
    32.29, 32.29, 129.16, 0, 129.16,
    32.29, 129.16, 129.16, 0,
    NULL, NULL, NULL, 0, 1, 4713
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 714), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4714
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 715), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4715
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 716), N'01', N'01001091', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4716
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 717), N'01', N'12000003', 1,
    16.98, 16.98, 16.98, 0, 16.98,
    16.98, 16.98, 16.98, 0,
    NULL, NULL, NULL, 0, 1, 4717
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 718), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4718
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 719), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4719
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 720), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 4720
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 721), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 4721
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 722), N'01', N'01001234', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 4722
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 723), N'01', N'01000366', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 4723
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 724), N'01', N'05000078', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 4724
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 725), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4725
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 726), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4726
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 727), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4727
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 728), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4728
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 729), N'01', N'03000203', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4729
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 730), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 4730
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 731), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4731
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 732), N'01', N'01001337', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4732
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 733), N'01', N'03000173', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4733
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 734), N'01', N'01001219', 2,
    20.56, 20.56, 41.12, 0, 41.12,
    20.56, 41.12, 41.12, 0,
    NULL, NULL, NULL, 0, 1, 4734
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 735), N'01', N'03000172', 1,
    148.99, 148.99, 148.99, 0, 148.99,
    148.99, 148.99, 148.99, 0,
    NULL, NULL, NULL, 0, 1, 4735
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 736), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4736
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 737), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4737
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 738), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4738
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 739), N'01', N'01002257', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 4739
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 740), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4740
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 741), N'01', N'01001505', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 4741
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 742), N'01', N'01001227', 1,
    22.71, 22.71, 22.71, 0, 22.71,
    22.71, 22.71, 22.71, 0,
    NULL, NULL, NULL, 0, 1, 4742
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 743), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4743
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 744), N'01', N'05000011', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 4744
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 745), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4745
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 746), N'01', N'01000219', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 4746
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 747), N'01', N'01001568', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 4747
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 748), N'01', N'01000037', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4748
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 749), N'01', N'01002191', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4749
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 750), N'01', N'01000515', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4750
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 751), N'01', N'01002215', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4751
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 752), N'01', N'03000215', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4752
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 753), N'01', N'01001093', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4753
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 754), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4754
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 755), N'01', N'01001932', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 4755
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 756), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4756
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 757), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4757
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 758), N'01', N'01002341', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4758
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 759), N'01', N'01002341', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4759
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 760), N'01', N'01002341', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4760
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 761), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4761
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 762), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 4762
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 763), N'01', N'01000179', 1,
    56.99, 56.99, 56.99, 0, 56.99,
    56.99, 56.99, 56.99, 0,
    NULL, NULL, NULL, 0, 1, 4763
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 764), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4764
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 765), N'01', N'01001074', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4765
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 766), N'01', N'01001452', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 4766
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 767), N'01', N'01002310', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4767
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 768), N'01', N'03000278', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4768
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 769), N'01', N'01002306', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4769
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 770), N'01', N'01001226', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4770
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 771), N'01', N'01001598', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4771
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 772), N'01', N'03000282', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4772
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 773), N'01', N'01001381', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4773
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 774), N'01', N'01000473', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4774
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 775), N'01', N'01001337', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4775
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 776), N'01', N'01002363', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 4776
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 777), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4777
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 778), N'01', N'01001931', 1,
    33.79, 33.79, 33.79, 0, 33.79,
    33.79, 33.79, 33.79, 0,
    NULL, NULL, NULL, 0, 1, 4778
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 779), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4779
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 780), N'01', N'01001929', 1,
    18.89, 18.89, 18.89, 0, 18.89,
    18.89, 18.89, 18.89, 0,
    NULL, NULL, NULL, 0, 1, 4780
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 781), N'01', N'07000008', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4781
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 782), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4782
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 783), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4783
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 784), N'01', N'01000517', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4784
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 785), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4785
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 786), N'01', N'01001335', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 4786
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 787), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 4787
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 788), N'01', N'01002186', 2,
    50.99, 50.99, 101.98, 0, 101.98,
    50.99, 101.98, 101.98, 0,
    NULL, NULL, NULL, 0, 1, 4788
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 789), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4789
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 790), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4790
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 791), N'01', N'01001079', 3,
    23.95, 23.95, 71.85, 0, 71.85,
    23.95, 71.85, 71.85, 0,
    NULL, NULL, NULL, 0, 1, 4791
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 792), N'01', N'01001757', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4792
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 793), N'01', N'01001927', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4793
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 794), N'01', N'01000359', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 4794
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 795), N'01', N'05000011', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 4795
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 796), N'01', N'01001815', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4796
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 797), N'01', N'01000862', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4797
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 798), N'01', N'01002340', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 4798
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 799), N'01', N'01000300', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 4799
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 800), N'01', N'01002680', 2,
    15.67, 15.67, 31.34, 0, 31.34,
    15.67, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 4800
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 801), N'01', N'01002244', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4801
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 802), N'01', N'01001384', 5,
    25.98, 25.98, 129.9, 0, 129.9,
    25.98, 129.9, 129.9, 0,
    NULL, NULL, NULL, 0, 1, 4802
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 803), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4803
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 804), N'01', N'01002663', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4804
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 805), N'01', N'01002663', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 4805
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 806), N'01', N'01002376', 1,
    43.69, 43.69, 43.69, 0, 43.69,
    43.69, 43.69, 43.69, 0,
    NULL, NULL, NULL, 0, 1, 4806
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 807), N'01', N'03000284', 1,
    74.79, 74.79, 74.79, 0, 74.79,
    74.79, 74.79, 74.79, 0,
    NULL, NULL, NULL, 0, 1, 4807
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 808), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4808
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 809), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4809
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 810), N'01', N'01000574', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 4810
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 811), N'01', N'01001824', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 4811
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 812), N'01', N'01001736', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4812
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 813), N'01', N'01000616', 1,
    34.29, 34.29, 34.29, 0, 34.29,
    34.29, 34.29, 34.29, 0,
    NULL, NULL, NULL, 0, 1, 4813
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 814), N'01', N'01001097', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 4814
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 815), N'01', N'01001929', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4815
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 816), N'01', N'01001929', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4816
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 817), N'01', N'01001270', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4817
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 818), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4818
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 819), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4819
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 820), N'01', N'01001767', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4820
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 821), N'01', N'01001767', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4821
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 822), N'01', N'01001767', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4822
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 823), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 4823
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
    NULL, NULL, NULL, 0, 1, 4824
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 825), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4825
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 826), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4826
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 827), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 4827
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 828), N'01', N'01001089', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 4828
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 829), N'01', N'08000005', 1,
    21.1, 21.1, 21.1, 0, 21.1,
    21.1, 21.1, 21.1, 0,
    NULL, NULL, NULL, 0, 1, 4829
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 830), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 4830
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 831), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4831
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 832), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4832
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 833), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4833
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 834), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 4834
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 835), N'01', N'01001265', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4835
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 836), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4836
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 837), N'01', N'01001422', 2,
    26.74, 26.74, 53.48, 0, 53.48,
    26.74, 53.48, 53.48, 0,
    NULL, NULL, NULL, 0, 1, 4837
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 838), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4838
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 839), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4839
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 840), N'01', N'01001043', 1,
    21.84, 21.84, 21.84, 0, 21.84,
    21.84, 21.84, 21.84, 0,
    NULL, NULL, NULL, 0, 1, 4840
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 841), N'01', N'01000587', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4841
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 842), N'01', N'01000438', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 4842
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 843), N'01', N'01000441', 3,
    43.99, 43.99, 131.97, 0, 131.97,
    43.99, 131.97, 131.97, 0,
    NULL, NULL, NULL, 0, 1, 4843
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 844), N'01', N'01001564', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 4844
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 845), N'01', N'01000455', 1,
    29.39, 29.39, 29.39, 0, 29.39,
    29.39, 29.39, 29.39, 0,
    NULL, NULL, NULL, 0, 1, 4845
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 846), N'01', N'01001609', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4846
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 847), N'01', N'01000151', 1,
    31.25, 31.25, 31.25, 0, 31.25,
    31.25, 31.25, 31.25, 0,
    NULL, NULL, NULL, 0, 1, 4847
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 848), N'01', N'01000642', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4848
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 849), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 4849
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 850), N'01', N'01001760', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 4850
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 851), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 4851
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 852), N'01', N'01001564', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 4852
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 853), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4853
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 854), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4854
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 855), N'01', N'01002398', 1,
    46.54, 46.54, 46.54, 0, 46.54,
    46.54, 46.54, 46.54, 0,
    NULL, NULL, NULL, 0, 1, 4855
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 856), N'01', N'01001957', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 4856
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 857), N'01', N'01001866', 5,
    33.989999999999995, 33.989999999999995, 169.95, 0, 169.95,
    33.989999999999995, 169.95, 169.95, 0,
    NULL, NULL, NULL, 0, 1, 4857
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 858), N'01', N'05000108', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 4858
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 859), N'01', N'05000014', 4,
    21.99, 21.99, 87.96, 0, 87.96,
    21.99, 87.96, 87.96, 0,
    NULL, NULL, NULL, 0, 1, 4859
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 860), N'01', N'01001095', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 4860
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 861), N'01', N'01001506', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 4861
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 862), N'01', N'01000878', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 4862
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 863), N'01', N'01001139', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4863
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 864), N'01', N'01000021', 2,
    31.34, 31.34, 62.68, 0, 62.68,
    31.34, 62.68, 62.68, 0,
    NULL, NULL, NULL, 0, 1, 4864
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 865), N'01', N'01001787', 5,
    21.65, 21.65, 108.25, 0, 108.25,
    21.65, 108.25, 108.25, 0,
    NULL, NULL, NULL, 0, 1, 4865
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 866), N'01', N'01000359', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 4866
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 867), N'01', N'02000735', 1,
    45.89, 45.89, 45.89, 0, 45.89,
    45.89, 45.89, 45.89, 0,
    NULL, NULL, NULL, 0, 1, 4867
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 868), N'01', N'02000735', 1,
    45.89, 45.89, 45.89, 0, 45.89,
    45.89, 45.89, 45.89, 0,
    NULL, NULL, NULL, 0, 1, 4868
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 869), N'01', N'02000735', 1,
    45.89, 45.89, 45.89, 0, 45.89,
    45.89, 45.89, 45.89, 0,
    NULL, NULL, NULL, 0, 1, 4869
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 870), N'01', N'01000605', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4870
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 871), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4871
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 872), N'01', N'01000822', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 4872
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 873), N'01', N'01000615', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4873
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 874), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4874
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 875), N'01', N'01001921', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4875
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 876), N'01', N'01001500', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4876
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 877), N'01', N'05000035', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4877
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 878), N'01', N'01000516', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 4878
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 879), N'01', N'01000385', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4879
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 880), N'01', N'01001442', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4880
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 881), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 4881
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 882), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 4882
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 883), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 4883
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 884), N'01', N'01001289', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 4884
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 885), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4885
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 886), N'01', N'01000602', 3,
    32.99, 32.99, 98.97, 0, 98.97,
    32.99, 98.97, 98.97, 0,
    NULL, NULL, NULL, 0, 1, 4886
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 887), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4887
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 888), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4888
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 889), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4889
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
    NULL, NULL, NULL, 0, 1, 4890
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 891), N'01', N'01000760', 2,
    45.99, 45.99, 91.98, 0, 91.98,
    45.99, 91.98, 91.98, 0,
    NULL, NULL, NULL, 0, 1, 4891
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 892), N'01', N'01000760', 2,
    45.99, 45.99, 91.98, 0, 91.98,
    45.99, 91.98, 91.98, 0,
    NULL, NULL, NULL, 0, 1, 4892
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 893), N'01', N'01001042', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 4893
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 894), N'01', N'01002374', 1,
    39.89, 39.89, 39.89, 0, 39.89,
    39.89, 39.89, 39.89, 0,
    NULL, NULL, NULL, 0, 1, 4894
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 895), N'01', N'01001800', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 4895
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 896), N'01', N'01001494', 1,
    22.79, 22.79, 22.79, 0, 22.79,
    22.79, 22.79, 22.79, 0,
    NULL, NULL, NULL, 0, 1, 4896
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 897), N'01', N'01001043', 1,
    21.84, 21.84, 21.84, 0, 21.84,
    21.84, 21.84, 21.84, 0,
    NULL, NULL, NULL, 0, 1, 4897
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 898), N'01', N'01001773', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 4898
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 899), N'01', N'01002391', 1,
    51.99, 51.99, 51.99, 0, 51.99,
    51.99, 51.99, 51.99, 0,
    NULL, NULL, NULL, 0, 1, 4899
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 900), N'01', N'01000613', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4900
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 901), N'01', N'01001054', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4901
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 902), N'01', N'01000613', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4902
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 903), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 4903
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 904), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4904
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 905), N'01', N'09000023', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 4905
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 906), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4906
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 907), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 4907
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 908), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4908
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 909), N'01', N'01000476', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 4909
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 910), N'01', N'03000206', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 4910
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 911), N'01', N'03000206', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 4911
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 912), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 4912
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 913), N'01', N'01002410', 2,
    44.99, 44.99, 89.98, 0, 89.98,
    44.99, 89.98, 89.98, 0,
    NULL, NULL, NULL, 0, 1, 4913
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 914), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 4914
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 915), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 4915
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 916), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4916
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 917), N'01', N'01000867', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 4917
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 918), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4918
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 919), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4919
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 920), N'01', N'01002388', 1,
    41.79, 41.79, 41.79, 0, 41.79,
    41.79, 41.79, 41.79, 0,
    NULL, NULL, NULL, 0, 1, 4920
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 921), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4921
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 922), N'01', N'03000198', 1,
    115.99, 115.99, 115.99, 0, 115.99,
    115.99, 115.99, 115.99, 0,
    NULL, NULL, NULL, 0, 1, 4922
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 923), N'01', N'05000074', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 4923
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 924), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4924
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 925), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4925
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 926), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4926
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 927), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4927
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 928), N'01', N'05000106', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 4928
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 929), N'01', N'01000837', 1,
    25.82, 25.82, 25.82, 0, 25.82,
    25.82, 25.82, 25.82, 0,
    NULL, NULL, NULL, 0, 1, 4929
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 930), N'01', N'01000837', 1,
    25.82, 25.82, 25.82, 0, 25.82,
    25.82, 25.82, 25.82, 0,
    NULL, NULL, NULL, 0, 1, 4930
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 931), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4931
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 932), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 4932
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 933), N'01', N'01001505', 1,
    24.85, 24.85, 24.85, 0, 24.85,
    24.85, 24.85, 24.85, 0,
    NULL, NULL, NULL, 0, 1, 4933
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 934), N'01', N'01002205', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4934
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 935), N'01', N'01001419', 2,
    23.74, 23.74, 47.48, 0, 47.48,
    23.74, 47.48, 47.48, 0,
    NULL, NULL, NULL, 0, 1, 4935
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 936), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4936
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 937), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4937
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 938), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4938
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 939), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4939
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 940), N'01', N'01001930', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 4940
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 941), N'01', N'05000112', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4941
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 942), N'01', N'01001378', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4942
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 943), N'01', N'01001594', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 4943
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 944), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 4944
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 945), N'01', N'01001166', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 4945
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 946), N'01', N'03000150', 1,
    69.99, 69.99, 69.99, 0, 69.99,
    69.99, 69.99, 69.99, 0,
    NULL, NULL, NULL, 0, 1, 4946
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 947), N'01', N'03000074', 1,
    76.99, 76.99, 76.99, 0, 76.99,
    76.99, 76.99, 76.99, 0,
    NULL, NULL, NULL, 0, 1, 4947
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 948), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4948
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 949), N'01', N'05000011', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4949
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 950), N'01', N'01001092', 1,
    17.49, 17.49, 17.49, 0, 17.49,
    17.49, 17.49, 17.49, 0,
    NULL, NULL, NULL, 0, 1, 4950
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 951), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 4951
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 952), N'01', N'01000516', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4952
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 953), N'01', N'01000407', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 4953
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 954), N'01', N'01001530', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4954
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 955), N'01', N'01000614', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 4955
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 956), N'01', N'01001184', 1,
    21.42, 21.42, 21.42, 0, 21.42,
    21.42, 21.42, 21.42, 0,
    NULL, NULL, NULL, 0, 1, 4956
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 957), N'01', N'01000359', 6,
    36.089999999999996, 36.089999999999996, 216.54, 0, 216.54,
    36.089999999999996, 216.54, 216.54, 0,
    NULL, NULL, NULL, 0, 1, 4957
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 958), N'01', N'03000131', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4958
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 959), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 4959
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 960), N'01', N'01001866', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4960
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
    NULL, NULL, NULL, 0, 1, 4961
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 962), N'01', N'01000457', 2,
    46.99, 46.99, 93.98, 0, 93.98,
    46.99, 93.98, 93.98, 0,
    NULL, NULL, NULL, 0, 1, 4962
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 963), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 4963
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 964), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4964
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 965), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4965
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 966), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 4966
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 967), N'01', N'01002236', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 4967
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 968), N'01', N'01001191', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 4968
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 969), N'01', N'01002376', 1,
    43.69, 43.69, 43.69, 0, 43.69,
    43.69, 43.69, 43.69, 0,
    NULL, NULL, NULL, 0, 1, 4969
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 970), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4970
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 971), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 4971
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 972), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 4972
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 973), N'01', N'01001076', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 4973
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 974), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 4974
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 975), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4975
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 976), N'01', N'01001499', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 4976
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 977), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4977
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 978), N'01', N'05000037', 2,
    16.99, 16.99, 33.98, 0, 33.98,
    16.99, 33.98, 33.98, 0,
    NULL, NULL, NULL, 0, 1, 4978
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 979), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 4979
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 980), N'01', N'01001073', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 4980
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 981), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4981
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 982), N'01', N'14000006', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4982
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 983), N'01', N'02000751', 1,
    68.84, 68.84, 68.84, 0, 68.84,
    68.84, 68.84, 68.84, 0,
    NULL, NULL, NULL, 0, 1, 4983
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 984), N'01', N'01001231', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 4984
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 985), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 4985
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 986), N'01', N'01002345', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 4986
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 987), N'01', N'01001772', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4987
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 988), N'01', N'01000575', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4988
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 989), N'01', N'01000575', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 4989
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 990), N'01', N'01001110', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 4990
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 991), N'01', N'01001098', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 4991
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 992), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4992
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 993), N'01', N'01002356', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 4993
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 994), N'01', N'01002318', 3,
    43.99, 43.99, 131.97, 0, 131.97,
    43.99, 131.97, 131.97, 0,
    NULL, NULL, NULL, 0, 1, 4994
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 995), N'01', N'05000035', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 4995
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 996), N'01', N'01000868', 1,
    36.54, 36.54, 36.54, 0, 36.54,
    36.54, 36.54, 36.54, 0,
    NULL, NULL, NULL, 0, 1, 4996
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 997), N'01', N'01001081', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 4997
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 998), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 4998
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 999), N'01', N'05000011', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 4999
);

    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH;
END;