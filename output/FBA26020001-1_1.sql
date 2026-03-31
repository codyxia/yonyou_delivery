/* ========================================
   用友U8发货单SQL
   单据号: FBA26020001-1
   生成时间: 2026-03-31 13:19:29
   ======================================== */

-- 此为第 1 部分，共 5 部分

DECLARE @DLID INT, @iDLsID INT;
DECLARE @BillCode NVARCHAR(30) = N'FBA26020001-1';

-- 自动获取ID，确保主子表关联一致
SELECT @DLID = ISNULL(MAX(DLID), 0) + 1 FROM DispatchList WITH (UPDLOCK, HOLDLOCK);
SELECT @iDLsID = ISNULL(MAX(iDLsID), 0) + 1 FROM DispatchLists WITH (UPDLOCK, HOLDLOCK);

BEGIN TRANSACTION;
BEGIN TRY

--- 插入表头 (DispatchList) ---
INSERT INTO [DispatchList] (
    [DLID], [cDLCode], [cVouchType], [cSTCode], [dDate],
    [cDepCode], [cCusCode], [cexch_name], [iExchRate],
    [bFirst], [bReturnFlag], [bSettleAll], [cMaker],
    [iVTid], [cBusType], [iverifystate], [dcreatesystime]
) VALUES (
    @DLID, N'FBA26020001-1', N'05', 1, '2026-02-28',
    N'0601', N'A0001', N'美元', 6.9678,
    0, 0, 0, N'张冰',
    71, N'普通销售', 0, GETDATE()
);

--- 插入表体明细 (DispatchLists) ---
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 1), N'01', N'01002232', 1,
    35.14, 35.14, 35.14, 0, 35.14,
    35.14, 35.14, 35.14, 0,
    NULL, NULL, NULL, 0, 1, 1
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 2), N'01', N'01001824', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 2
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 3), N'01', N'01001956', 2,
    31.34, 31.34, 62.68, 0, 62.68,
    31.34, 62.68, 62.68, 0,
    NULL, NULL, NULL, 0, 1, 3
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 4), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 4
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 5), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 5
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 6), N'01', N'01000495', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 6
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 7), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 7
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 8), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 8
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 9), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 9
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 10), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 10
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 11), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 11
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 12), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 12
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 13), N'01', N'01002183', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 13
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 14), N'01', N'01001381', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 14
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 15), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 15
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 16), N'01', N'01002308', 2,
    44.99, 44.99, 89.98, 0, 89.98,
    44.99, 89.98, 89.98, 0,
    NULL, NULL, NULL, 0, 1, 16
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 17), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 17
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 18), N'01', N'01001870', 1,
    28.89, 28.89, 28.89, 0, 28.89,
    28.89, 28.89, 28.89, 0,
    NULL, NULL, NULL, 0, 1, 18
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 19), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 19
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 20), N'01', N'01001453', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 20
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 21), N'01', N'01001528', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 21
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 22), N'01', N'01000613', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 22
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 23), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 23
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 24), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 24
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 25), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 25
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 26), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 26
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 27), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 27
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 28), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 28
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 29), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 29
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 30), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 30
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 31), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 31
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 32), N'01', N'03000191', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 32
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 33), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 33
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 34), N'01', N'01001089', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 34
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 35), N'01', N'12000006', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 35
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 36), N'01', N'01001086', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 36
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 37), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 37
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 38), N'01', N'01000266', 4,
    30.58, 30.58, 122.32, 0, 122.32,
    30.58, 122.32, 122.32, 0,
    NULL, NULL, NULL, 0, 1, 38
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 39), N'01', N'07000005', 1,
    27.92, 27.92, 27.92, 0, 27.92,
    27.92, 27.92, 27.92, 0,
    NULL, NULL, NULL, 0, 1, 39
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 40), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 40
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 41), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 41
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 42), N'01', N'01001601', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 42
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
    NULL, NULL, NULL, 0, 1, 43
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 44), N'01', N'01001728', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 44
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 45), N'01', N'02000724', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 45
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 46), N'01', N'10000003', 1,
    26.98, 26.98, 26.98, 0, 26.98,
    26.98, 26.98, 26.98, 0,
    NULL, NULL, NULL, 0, 1, 46
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 47), N'01', N'01000149', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 47
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 48), N'01', N'01000149', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 48
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 49), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 49
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 50), N'01', N'01001289', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 50
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 51), N'01', N'01001799', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 51
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 52), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 52
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 53), N'01', N'03000130', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 53
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
    NULL, NULL, NULL, 0, 1, 54
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 55), N'01', N'01001878', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 55
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 56), N'01', N'01000326', 2,
    24.64, 24.64, 49.28, 0, 49.28,
    24.64, 49.28, 49.28, 0,
    NULL, NULL, NULL, 0, 1, 56
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 57), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 57
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 58), N'01', N'05000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 58
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 59), N'01', N'01001319', 1,
    26.97, 26.97, 26.97, 0, 26.97,
    26.97, 26.97, 26.97, 0,
    NULL, NULL, NULL, 0, 1, 59
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 60), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 60
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 61), N'01', N'01002198', 1,
    52.99, 52.99, 52.99, 0, 52.99,
    52.99, 52.99, 52.99, 0,
    NULL, NULL, NULL, 0, 1, 61
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 62), N'01', N'01002247', 1,
    54.99, 54.99, 54.99, 0, 54.99,
    54.99, 54.99, 54.99, 0,
    NULL, NULL, NULL, 0, 1, 62
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 63), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 63
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 64), N'01', N'01001160', 1,
    17.13, 17.13, 17.13, 0, 17.13,
    17.13, 17.13, 17.13, 0,
    NULL, NULL, NULL, 0, 1, 64
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 65), N'01', N'01001163', 1,
    22.46, 22.46, 22.46, 0, 22.46,
    22.46, 22.46, 22.46, 0,
    NULL, NULL, NULL, 0, 1, 65
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
    NULL, NULL, NULL, 0, 1, 66
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 67), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 67
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 68), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 68
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 69), N'01', N'01001081', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 69
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 70), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 70
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 71), N'01', N'01001610', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 71
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 72), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 72
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 73), N'01', N'01000407', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 73
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 74), N'01', N'01001487', 1,
    27.35, 27.35, 27.35, 0, 27.35,
    27.35, 27.35, 27.35, 0,
    NULL, NULL, NULL, 0, 1, 74
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 75), N'01', N'01000437', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 75
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 76), N'01', N'01002228', 1,
    109.99, 109.99, 109.99, 0, 109.99,
    109.99, 109.99, 109.99, 0,
    NULL, NULL, NULL, 0, 1, 76
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 77), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 77
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 78), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 78
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
    NULL, NULL, NULL, 0, 1, 79
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 80), N'01', N'01002374', 2,
    41.99, 41.99, 83.98, 0, 83.98,
    41.99, 83.98, 83.98, 0,
    NULL, NULL, NULL, 0, 1, 80
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 81), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 81
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 82), N'01', N'01001863', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 82
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 83), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 83
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 84), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 84
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 85), N'01', N'01000404', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 85
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 86), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 86
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 87), N'01', N'01002381', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 87
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 88), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 88
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 89), N'01', N'01000986', 2,
    21.99, 21.99, 43.98, 0, 43.98,
    21.99, 43.98, 43.98, 0,
    NULL, NULL, NULL, 0, 1, 89
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 90), N'01', N'01001000', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 90
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 91), N'01', N'01000529', 1,
    25.89, 25.89, 25.89, 0, 25.89,
    25.89, 25.89, 25.89, 0,
    NULL, NULL, NULL, 0, 1, 91
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 92), N'01', N'01001450', 1,
    30.77, 30.77, 30.77, 0, 30.77,
    30.77, 30.77, 30.77, 0,
    NULL, NULL, NULL, 0, 1, 92
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 93), N'01', N'01001081', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 93
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 94), N'01', N'01000574', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 94
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 95), N'01', N'03000193', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 95
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 96), N'01', N'01001048', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 96
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 97), N'01', N'01002393', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 97
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 98), N'01', N'05000081', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 98
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 99), N'01', N'03000168', 1,
    27.29, 27.29, 27.29, 0, 27.29,
    27.29, 27.29, 27.29, 0,
    NULL, NULL, NULL, 0, 1, 99
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 100), N'01', N'01002388', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 100
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 101), N'01', N'01001316', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 101
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 102), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 102
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 103), N'01', N'03000178', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 103
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 104), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 104
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 105), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 105
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 106), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 106
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 107), N'01', N'01000606', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 107
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 108), N'01', N'01000606', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 108
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 109), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 109
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 110), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 110
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 111), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 111
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 112), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 112
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 113), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 113
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 114), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 114
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 115), N'01', N'01000581', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 115
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 116), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 116
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 117), N'01', N'01000475', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 117
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 118), N'01', N'05000035', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 118
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 119), N'01', N'01000496', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 119
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 120), N'01', N'05000036', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 120
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 121), N'01', N'01001231', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 121
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 122), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 122
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 123), N'01', N'01002236', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 123
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 124), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 124
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 125), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 125
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 126), N'01', N'01001381', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 126
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 127), N'01', N'02000735', 2,
    45.89, 45.89, 91.78, 0, 91.78,
    45.89, 91.78, 91.78, 0,
    NULL, NULL, NULL, 0, 1, 127
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 128), N'01', N'02000752', 1,
    69.74, 69.74, 69.74, 0, 69.74,
    69.74, 69.74, 69.74, 0,
    NULL, NULL, NULL, 0, 1, 128
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 129), N'01', N'01001742', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 129
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 130), N'01', N'01002215', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 130
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 131), N'01', N'01001824', 2,
    30.59, 30.59, 61.18, 0, 61.18,
    30.59, 61.18, 61.18, 0,
    NULL, NULL, NULL, 0, 1, 131
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 132), N'01', N'01001721', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 132
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 133), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 133
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 134), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 134
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 135), N'01', N'05000112', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 135
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 136), N'01', N'05000112', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 136
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 137), N'01', N'01001192', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 137
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 138), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 138
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 139), N'01', N'01001333', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 139
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 140), N'01', N'01000177', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 140
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 141), N'01', N'05000112', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 141
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 142), N'01', N'01001319', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 142
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 143), N'01', N'01000641', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 143
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 144), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 144
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 145), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 145
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 146), N'01', N'01001452', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 146
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 147), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 147
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 148), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 148
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 149), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 149
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 150), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 150
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
    NULL, NULL, NULL, 0, 1, 151
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 152), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 152
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 153), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 153
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 154), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 154
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 155), N'01', N'05000006', 4,
    22.99, 22.99, 91.96, 0, 91.96,
    22.99, 91.96, 91.96, 0,
    NULL, NULL, NULL, 0, 1, 155
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 156), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 156
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 157), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 157
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 158), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 158
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 159), N'01', N'01001234', 3,
    19.99, 19.99, 59.97, 0, 59.97,
    19.99, 59.97, 59.97, 0,
    NULL, NULL, NULL, 0, 1, 159
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 160), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 160
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 161), N'01', N'01001506', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 161
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 162), N'01', N'01001957', 1,
    30.67, 30.67, 30.67, 0, 30.67,
    30.67, 30.67, 30.67, 0,
    NULL, NULL, NULL, 0, 1, 162
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 163), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 163
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 164), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 164
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 165), N'01', N'01001333', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 165
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 166), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 166
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 167), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 167
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
    NULL, NULL, NULL, 0, 1, 168
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 169), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 169
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 170), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 170
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 171), N'01', N'01001711', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 171
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 172), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 172
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 173), N'01', N'01001000', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 173
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 174), N'01', N'01001000', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 174
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 175), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 175
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
    NULL, NULL, NULL, 0, 1, 176
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 177), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 177
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 178), N'01', N'01002417', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 178
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 179), N'01', N'10000003', 1,
    26.98, 26.98, 26.98, 0, 26.98,
    26.98, 26.98, 26.98, 0,
    NULL, NULL, NULL, 0, 1, 179
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 180), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 180
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 181), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 181
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 182), N'01', N'01001590', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 182
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 183), N'01', N'01001340', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 183
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 184), N'01', N'01001119', 1,
    32.39, 32.39, 32.39, 0, 32.39,
    32.39, 32.39, 32.39, 0,
    NULL, NULL, NULL, 0, 1, 184
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 185), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 185
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 186), N'01', N'01001234', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 186
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 187), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 187
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 188), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 188
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 189), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 189
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 190), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 190
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 191), N'01', N'01001738', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 191
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 192), N'01', N'01000498', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 192
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 193), N'01', N'01001955', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 193
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 194), N'01', N'14000006', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 194
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 195), N'01', N'05000081', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 195
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 196), N'01', N'03000176', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 196
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 197), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 197
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 198), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 198
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 199), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 199
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 200), N'01', N'01000359', 2,
    36.09, 36.09, 72.18, 0, 72.18,
    36.09, 72.18, 72.18, 0,
    NULL, NULL, NULL, 0, 1, 200
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 201), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 201
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 202), N'01', N'01001026', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 202
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 203), N'01', N'01001026', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 203
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 204), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 204
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 205), N'01', N'01001238', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 205
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 206), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 206
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 207), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 207
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 208), N'01', N'01000214', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 208
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 209), N'01', N'01000878', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 209
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 210), N'01', N'03000203', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 210
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 211), N'01', N'08000009', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 211
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 212), N'01', N'08000009', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 212
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 213), N'01', N'01001503', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 213
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 214), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 214
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 215), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 215
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 216), N'01', N'01001264', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 216
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 217), N'01', N'01001190', 2,
    31.34, 31.34, 62.68, 0, 62.68,
    31.34, 62.68, 62.68, 0,
    NULL, NULL, NULL, 0, 1, 217
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 218), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 218
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 219), N'01', N'01000620', 4,
    39.99, 39.99, 159.96, 0, 159.96,
    39.99, 159.96, 159.96, 0,
    NULL, NULL, NULL, 0, 1, 219
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 220), N'01', N'01000604', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 220
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 221), N'01', N'01000194', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 221
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 222), N'01', N'01000357', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 222
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 223), N'01', N'01000574', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 223
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 224), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 224
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 225), N'01', N'01001447', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 225
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 226), N'01', N'14000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 226
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 227), N'01', N'01001953', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 227
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 228), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 228
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 229), N'01', N'05000001', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 229
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 230), N'01', N'05000108', 3,
    19.19, 19.19, 57.57, 0, 57.57,
    19.19, 57.57, 57.57, 0,
    NULL, NULL, NULL, 0, 1, 230
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 231), N'01', N'05000108', 2,
    19.19, 19.19, 38.38, 0, 38.38,
    19.19, 38.38, 38.38, 0,
    NULL, NULL, NULL, 0, 1, 231
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 232), N'01', N'01001762', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 232
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 233), N'01', N'01001189', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 233
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 234), N'01', N'01001338', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 234
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 235), N'01', N'01002007', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 235
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 236), N'01', N'03000055', 2,
    14.99, 14.99, 29.98, 0, 29.98,
    14.99, 29.98, 29.98, 0,
    NULL, NULL, NULL, 0, 1, 236
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 237), N'01', N'03000054', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 237
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 238), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 238
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 239), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 239
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 240), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 240
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 241), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 241
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 242), N'01', N'01001039', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 242
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 243), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 243
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 244), N'01', N'01000455', 2,
    41.99, 41.99, 83.98, 0, 83.98,
    41.99, 83.98, 83.98, 0,
    NULL, NULL, NULL, 0, 1, 244
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 245), N'01', N'05000082', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 245
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 246), N'01', N'03000197', 1,
    58.98, 58.98, 58.98, 0, 58.98,
    58.98, 58.98, 58.98, 0,
    NULL, NULL, NULL, 0, 1, 246
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 247), N'01', N'01002881', 1,
    32.32, 32.32, 32.32, 0, 32.32,
    32.32, 32.32, 32.32, 0,
    NULL, NULL, NULL, 0, 1, 247
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 248), N'01', N'01000234', 1,
    43.6, 43.6, 43.6, 0, 43.6,
    43.6, 43.6, 43.6, 0,
    NULL, NULL, NULL, 0, 1, 248
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 249), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 249
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 250), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 250
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 251), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 251
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 252), N'01', N'01002010', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 252
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 253), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 253
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 254), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 254
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 255), N'01', N'01002010', 2,
    31.49, 31.49, 62.98, 0, 62.98,
    31.49, 62.98, 62.98, 0,
    NULL, NULL, NULL, 0, 1, 255
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 256), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 256
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 257), N'01', N'02000757', 1,
    93.14, 93.14, 93.14, 0, 93.14,
    93.14, 93.14, 93.14, 0,
    NULL, NULL, NULL, 0, 1, 257
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 258), N'01', N'01000177', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 258
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 259), N'01', N'03000192', 1,
    59.98, 59.98, 59.98, 0, 59.98,
    59.98, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 259
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 260), N'01', N'01002169', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 260
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 261), N'01', N'03000078', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 261
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 262), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 262
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 263), N'01', N'05000080', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 263
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 264), N'01', N'09000023', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 264
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 265), N'01', N'01000386', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 265
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 266), N'01', N'01002009', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 266
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 267), N'01', N'01002009', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 267
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 268), N'01', N'01001863', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 268
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 269), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 269
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 270), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 270
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 271), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 271
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 272), N'01', N'03000197', 1,
    58.98, 58.98, 58.98, 0, 58.98,
    58.98, 58.98, 58.98, 0,
    NULL, NULL, NULL, 0, 1, 272
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 273), N'01', N'01002383', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 273
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 274), N'01', N'01002383', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 274
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 275), N'01', N'03000169', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 275
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 276), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 276
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 277), N'01', N'01001048', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 277
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 278), N'01', N'08000011', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 278
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 279), N'01', N'01000289', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 279
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 280), N'01', N'01000289', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 280
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 281), N'01', N'01000289', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 281
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 282), N'01', N'01000289', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 282
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 283), N'01', N'01000289', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 283
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 284), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 284
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 285), N'01', N'01001904', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 285
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 286), N'01', N'01001365', 2,
    21.99, 21.99, 43.98, 0, 43.98,
    21.99, 43.98, 43.98, 0,
    NULL, NULL, NULL, 0, 1, 286
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 287), N'01', N'01001365', 2,
    21.99, 21.99, 43.98, 0, 43.98,
    21.99, 43.98, 43.98, 0,
    NULL, NULL, NULL, 0, 1, 287
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 288), N'01', N'03000176', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 288
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 289), N'01', N'01002442', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 289
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 290), N'01', N'10000003', 1,
    26.98, 26.98, 26.98, 0, 26.98,
    26.98, 26.98, 26.98, 0,
    NULL, NULL, NULL, 0, 1, 290
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 291), N'01', N'01000776', 1,
    29.79, 29.79, 29.79, 0, 29.79,
    29.79, 29.79, 29.79, 0,
    NULL, NULL, NULL, 0, 1, 291
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 292), N'01', N'01001564', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 292
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 293), N'01', N'01001826', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 293
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 294), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 294
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 295), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 295
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 296), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 296
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 297), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 297
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 298), N'01', N'01000642', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 298
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 299), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 299
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 300), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 300
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 301), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 301
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 302), N'01', N'01001823', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 302
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 303), N'01', N'01000155', 3,
    21.560000000000002, 21.560000000000002, 64.68, 0, 64.68,
    21.560000000000002, 64.68, 64.68, 0,
    NULL, NULL, NULL, 0, 1, 303
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 304), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 304
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 305), N'01', N'01001234', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 305
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 306), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 306
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 307), N'01', N'01000604', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 307
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 308), N'01', N'01002383', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 308
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 309), N'01', N'01002387', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 309
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 310), N'01', N'01000361', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 310
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 311), N'01', N'01001383', 4,
    34.99, 34.99, 139.96, 0, 139.96,
    34.99, 139.96, 139.96, 0,
    NULL, NULL, NULL, 0, 1, 311
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 312), N'01', N'03000131', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 312
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 313), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 313
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 314), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 314
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 315), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 315
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 316), N'01', N'01001590', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 316
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 317), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 317
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 318), N'01', N'01001865', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 318
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 319), N'01', N'01001139', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 319
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 320), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 320
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 321), N'01', N'05000006', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 321
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 322), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 322
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 323), N'01', N'01000022', 1,
    23.93, 23.93, 23.93, 0, 23.93,
    23.93, 23.93, 23.93, 0,
    NULL, NULL, NULL, 0, 1, 323
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 324), N'01', N'03000205', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 324
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 325), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 325
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 326), N'01', N'01000837', 1,
    25.82, 25.82, 25.82, 0, 25.82,
    25.82, 25.82, 25.82, 0,
    NULL, NULL, NULL, 0, 1, 326
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 327), N'01', N'01001264', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 327
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 328), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 328
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 329), N'01', N'03000055', 2,
    14.99, 14.99, 29.98, 0, 29.98,
    14.99, 29.98, 29.98, 0,
    NULL, NULL, NULL, 0, 1, 329
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 330), N'01', N'01001773', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 330
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 331), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 331
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 332), N'01', N'01001442', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 332
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 333), N'01', N'01002374', 2,
    41.99, 41.99, 83.98, 0, 83.98,
    41.99, 83.98, 83.98, 0,
    NULL, NULL, NULL, 0, 1, 333
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 334), N'01', N'01002374', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 334
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 335), N'01', N'01002374', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 335
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 336), N'01', N'01001816', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 336
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 337), N'01', N'01000359', 2,
    37.99, 37.99, 75.98, 0, 75.98,
    37.99, 75.98, 75.98, 0,
    NULL, NULL, NULL, 0, 1, 337
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 338), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 338
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 339), N'01', N'01000072', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 339
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 340), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 340
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 341), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 341
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 342), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 342
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 343), N'01', N'01001442', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 343
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 344), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 344
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 345), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 345
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 346), N'01', N'05000081', 5,
    21.990000000000002, 21.990000000000002, 109.95, 0, 109.95,
    21.990000000000002, 109.95, 109.95, 0,
    NULL, NULL, NULL, 0, 1, 346
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 347), N'01', N'05000081', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 347
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 348), N'01', N'08000004', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 348
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 349), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 349
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 350), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 350
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 351), N'01', N'01001452', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 351
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 352), N'01', N'01000603', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 352
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 353), N'01', N'05000034', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 353
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 354), N'01', N'01001109', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 354
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 355), N'01', N'01000297', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 355
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 356), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 356
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
    NULL, NULL, NULL, 0, 1, 357
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 358), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 358
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
    NULL, NULL, NULL, 0, 1, 359
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 360), N'01', N'01002865', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 360
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 361), N'01', N'01002865', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 361
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 362), N'01', N'03000149', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 362
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 363), N'01', N'03000192', 1,
    59.98, 59.98, 59.98, 0, 59.98,
    59.98, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 363
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
    NULL, NULL, NULL, 0, 1, 364
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
    NULL, NULL, NULL, 0, 1, 365
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 366), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 366
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 367), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 367
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 368), N'01', N'01001143', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 368
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 369), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 369
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 370), N'01', N'01001695', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 370
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 371), N'01', N'01001864', 3,
    32.99, 32.99, 98.97, 0, 98.97,
    32.99, 98.97, 98.97, 0,
    NULL, NULL, NULL, 0, 1, 371
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 372), N'01', N'01001143', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 372
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 373), N'01', N'01001189', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 373
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 374), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 374
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 375), N'01', N'01001931', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 375
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 376), N'01', N'01001499', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 376
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 377), N'01', N'01000053', 1,
    43.22, 43.22, 43.22, 0, 43.22,
    43.22, 43.22, 43.22, 0,
    NULL, NULL, NULL, 0, 1, 377
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 378), N'01', N'01001165', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 378
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 379), N'01', N'01000472', 1,
    26.39, 26.39, 26.39, 0, 26.39,
    26.39, 26.39, 26.39, 0,
    NULL, NULL, NULL, 0, 1, 379
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 380), N'01', N'01000436', 1,
    26.39, 26.39, 26.39, 0, 26.39,
    26.39, 26.39, 26.39, 0,
    NULL, NULL, NULL, 0, 1, 380
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 381), N'01', N'01001826', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 381
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 382), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 382
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 383), N'01', N'01002256', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 383
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 384), N'01', N'01002256', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 384
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 385), N'01', N'01000475', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 385
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 386), N'01', N'05000010', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 386
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 387), N'01', N'01001045', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 387
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 388), N'01', N'01002342', 2,
    49.99, 49.99, 99.98, 0, 99.98,
    49.99, 99.98, 99.98, 0,
    NULL, NULL, NULL, 0, 1, 388
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 389), N'01', N'01002178', 2,
    50.99, 50.99, 101.98, 0, 101.98,
    50.99, 101.98, 101.98, 0,
    NULL, NULL, NULL, 0, 1, 389
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 390), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 390
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 391), N'01', N'01000604', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 391
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 392), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 392
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 393), N'01', N'01001953', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 393
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 394), N'01', N'05000105', 2,
    19.37, 19.37, 38.74, 0, 38.74,
    19.37, 38.74, 38.74, 0,
    NULL, NULL, NULL, 0, 1, 394
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 395), N'01', N'01002237', 1,
    41.79, 41.79, 41.79, 0, 41.79,
    41.79, 41.79, 41.79, 0,
    NULL, NULL, NULL, 0, 1, 395
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 396), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 396
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 397), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 397
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 398), N'01', N'01001449', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 398
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 399), N'01', N'03000199', 1,
    149.39, 149.39, 149.39, 0, 149.39,
    149.39, 149.39, 149.39, 0,
    NULL, NULL, NULL, 0, 1, 399
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 400), N'01', N'01002191', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 400
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 401), N'01', N'01001503', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 401
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 402), N'01', N'03000101', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 402
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 403), N'01', N'01000620', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 403
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 404), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 404
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 405), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 405
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 406), N'01', N'05000011', 4,
    19.59, 19.59, 78.36, 0, 78.36,
    19.59, 78.36, 78.36, 0,
    NULL, NULL, NULL, 0, 1, 406
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 407), N'01', N'02000719', 1,
    28.04, 28.04, 28.04, 0, 28.04,
    28.04, 28.04, 28.04, 0,
    NULL, NULL, NULL, 0, 1, 407
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 408), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 408
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 409), N'01', N'01001055', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 409
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 410), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 410
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 411), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 411
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 412), N'01', N'01001452', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 412
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 413), N'01', N'01001459', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 413
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 414), N'01', N'12000006', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 414
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 415), N'01', N'01001957', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 415
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 416), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 416
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 417), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 417
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 418), N'01', N'05000081', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 418
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 419), N'01', N'01001164', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 419
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 420), N'01', N'01001773', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 420
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 421), N'01', N'01001772', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 421
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 422), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 422
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 423), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 423
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 424), N'01', N'01001815', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 424
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 425), N'01', N'01001026', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 425
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 426), N'01', N'01000153', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 426
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 427), N'01', N'01001508', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 427
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 428), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 428
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 429), N'01', N'01000761', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 429
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 430), N'01', N'01001234', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 430
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 431), N'01', N'01001139', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 431
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 432), N'01', N'14000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 432
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 433), N'01', N'01001765', 3,
    27.99, 27.99, 83.97, 0, 83.97,
    27.99, 83.97, 83.97, 0,
    NULL, NULL, NULL, 0, 1, 433
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 434), N'01', N'01002236', 2,
    42.74, 42.74, 85.48, 0, 85.48,
    42.74, 85.48, 85.48, 0,
    NULL, NULL, NULL, 0, 1, 434
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 435), N'01', N'05000046', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 435
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 436), N'01', N'01000439', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 436
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 437), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 437
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 438), N'01', N'01001029', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 438
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 439), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 439
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 440), N'01', N'01001761', 3,
    25.64, 25.64, 76.92, 0, 76.92,
    25.64, 76.92, 76.92, 0,
    NULL, NULL, NULL, 0, 1, 440
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 441), N'01', N'01001761', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 441
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 442), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 442
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 443), N'01', N'03000191', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 443
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 444), N'01', N'03000163', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 444
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 445), N'01', N'05000011', 4,
    19.59, 19.59, 78.36, 0, 78.36,
    19.59, 78.36, 78.36, 0,
    NULL, NULL, NULL, 0, 1, 445
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 446), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 446
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 447), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 447
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 448), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 448
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 449), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 449
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 450), N'01', N'01001486', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 450
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 451), N'01', N'14000006', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 451
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 452), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 452
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 453), N'01', N'01000283', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 453
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 454), N'01', N'01001929', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 454
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 455), N'01', N'01001076', 2,
    28.99, 28.99, 57.98, 0, 57.98,
    28.99, 57.98, 57.98, 0,
    NULL, NULL, NULL, 0, 1, 455
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 456), N'01', N'01001929', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 456
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 457), N'01', N'01000614', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 457
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 458), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 458
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 459), N'01', N'01000298', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 459
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 460), N'01', N'03000125', 1,
    16.99, 16.99, 16.99, 0, 16.99,
    16.99, 16.99, 16.99, 0,
    NULL, NULL, NULL, 0, 1, 460
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 461), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 461
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 462), N'01', N'01001907', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 462
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 463), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 463
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 464), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 464
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 465), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 465
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 466), N'01', N'01002690', 1,
    33.39, 33.39, 33.39, 0, 33.39,
    33.39, 33.39, 33.39, 0,
    NULL, NULL, NULL, 0, 1, 466
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 467), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 467
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 468), N'01', N'01001091', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 468
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 469), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 469
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 470), N'01', N'03000278', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 470
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 471), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 471
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 472), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 472
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 473), N'01', N'01001865', 3,
    31.49, 31.49, 94.47, 0, 94.47,
    31.49, 94.47, 94.47, 0,
    NULL, NULL, NULL, 0, 1, 473
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 474), N'01', N'01001499', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 474
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 475), N'01', N'01001726', 2,
    21.33, 21.33, 42.66, 0, 42.66,
    21.33, 42.66, 42.66, 0,
    NULL, NULL, NULL, 0, 1, 475
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 476), N'01', N'01001307', 1,
    25.07, 25.07, 25.07, 0, 25.07,
    25.07, 25.07, 25.07, 0,
    NULL, NULL, NULL, 0, 1, 476
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 477), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 477
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
    NULL, NULL, NULL, 0, 1, 478
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 479), N'01', N'05000108', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 479
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 480), N'01', N'01001880', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 480
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 481), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 481
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 482), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 482
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 483), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 483
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 484), N'01', N'01002388', 3,
    43.99, 43.99, 131.97, 0, 131.97,
    43.99, 131.97, 131.97, 0,
    NULL, NULL, NULL, 0, 1, 484
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 485), N'01', N'01001143', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 485
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 486), N'01', N'01001143', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 486
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 487), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 487
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 488), N'01', N'01001499', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 488
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 489), N'01', N'01002187', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 489
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 490), N'01', N'01001326', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 490
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 491), N'01', N'01001048', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 491
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 492), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 492
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 493), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 493
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 494), N'01', N'01002008', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 494
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 495), N'01', N'01001423', 1,
    18.19, 18.19, 18.19, 0, 18.19,
    18.19, 18.19, 18.19, 0,
    NULL, NULL, NULL, 0, 1, 495
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 496), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 496
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 497), N'01', N'01001564', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 497
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 498), N'01', N'01001305', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 498
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 499), N'01', N'01000359', 2,
    36.09, 36.09, 72.18, 0, 72.18,
    36.09, 72.18, 72.18, 0,
    NULL, NULL, NULL, 0, 1, 499
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 500), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 500
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 501), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 501
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 502), N'01', N'01001073', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 502
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 503), N'01', N'07000005', 1,
    27.92, 27.92, 27.92, 0, 27.92,
    27.92, 27.92, 27.92, 0,
    NULL, NULL, NULL, 0, 1, 503
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 504), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 504
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 505), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 505
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 506), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 506
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 507), N'01', N'01000267', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 507
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 508), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 508
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 509), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 509
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 510), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 510
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 511), N'01', N'01001688', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 511
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 512), N'01', N'01001039', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 512
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 513), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 513
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 514), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 514
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 515), N'01', N'03000168', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 515
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 516), N'01', N'01000359', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 516
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 517), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 517
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 518), N'01', N'01001329', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 518
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 519), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 519
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 520), N'01', N'01000761', 2,
    59.99, 59.99, 119.98, 0, 119.98,
    59.99, 119.98, 119.98, 0,
    NULL, NULL, NULL, 0, 1, 520
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 521), N'01', N'05000082', 3,
    19.99, 19.99, 59.97, 0, 59.97,
    19.99, 59.97, 59.97, 0,
    NULL, NULL, NULL, 0, 1, 521
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 522), N'01', N'01001902', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 522
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 523), N'01', N'01001918', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 523
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 524), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 524
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 525), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 525
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 526), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 526
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 527), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 527
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 528), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 528
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 529), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 529
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 530), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 530
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 531), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 531
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 532), N'01', N'01001090', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 532
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 533), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 533
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 534), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 534
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 535), N'01', N'01001460', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 535
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 536), N'01', N'01001815', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 536
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 537), N'01', N'01000406', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 537
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 538), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 538
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 539), N'01', N'03000156', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 539
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 540), N'01', N'01002435', 1,
    38.24, 38.24, 38.24, 0, 38.24,
    38.24, 38.24, 38.24, 0,
    NULL, NULL, NULL, 0, 1, 540
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 541), N'01', N'01001919', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 541
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 542), N'01', N'01002663', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 542
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 543), N'01', N'14000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 543
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 544), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 544
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 545), N'01', N'01001932', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 545
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 546), N'01', N'01000090', 1,
    41.7, 41.7, 41.7, 0, 41.7,
    41.7, 41.7, 41.7, 0,
    NULL, NULL, NULL, 0, 1, 546
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 547), N'01', N'01001042', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 547
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 548), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 548
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 549), N'01', N'01001499', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 549
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 550), N'01', N'03000117', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 550
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 551), N'01', N'01000300', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 551
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 552), N'01', N'03000054', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 552
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 553), N'01', N'01001555', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 553
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 554), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 554
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 555), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 555
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
    NULL, NULL, NULL, 0, 1, 556
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 557), N'01', N'12000002', 1,
    15.98, 15.98, 15.98, 0, 15.98,
    15.98, 15.98, 15.98, 0,
    NULL, NULL, NULL, 0, 1, 557
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 558), N'01', N'01000359', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 558
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 559), N'01', N'01001091', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 559
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 560), N'01', N'01000219', 2,
    42.74, 42.74, 85.48, 0, 85.48,
    42.74, 85.48, 85.48, 0,
    NULL, NULL, NULL, 0, 1, 560
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 561), N'01', N'01002612', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 561
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 562), N'01', N'03000138', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 562
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 563), N'01', N'01000620', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 563
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 564), N'01', N'01001089', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 564
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 565), N'01', N'01000031', 2,
    45.59, 45.59, 91.18, 0, 91.18,
    45.59, 91.18, 91.18, 0,
    NULL, NULL, NULL, 0, 1, 565
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 566), N'01', N'01000076', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 566
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 567), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 567
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 568), N'01', N'07000007', 1,
    29.59, 29.59, 29.59, 0, 29.59,
    29.59, 29.59, 29.59, 0,
    NULL, NULL, NULL, 0, 1, 568
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 569), N'01', N'01001589', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 569
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 570), N'01', N'02000726', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 570
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 571), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 571
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 572), N'01', N'01001907', 4,
    35.99, 35.99, 143.96, 0, 143.96,
    35.99, 143.96, 143.96, 0,
    NULL, NULL, NULL, 0, 1, 572
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 573), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 573
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 574), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 574
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 575), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 575
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 576), N'01', N'01001532', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 576
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 577), N'01', N'03000093', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 577
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 578), N'01', N'03000282', 1,
    37.98, 37.98, 37.98, 0, 37.98,
    37.98, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 578
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 579), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 579
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 580), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 580
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 581), N'01', N'12000004', 1,
    21.98, 21.98, 21.98, 0, 21.98,
    21.98, 21.98, 21.98, 0,
    NULL, NULL, NULL, 0, 1, 581
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 582), N'01', N'01001864', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 582
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 583), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 583
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 584), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 584
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 585), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 585
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 586), N'01', N'01001020', 4,
    31.05, 31.05, 124.2, 0, 124.2,
    31.05, 124.2, 124.2, 0,
    NULL, NULL, NULL, 0, 1, 586
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 587), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 587
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 588), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 588
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 589), N'01', N'01001802', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 589
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 590), N'01', N'01000385', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 590
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 591), N'01', N'01001272', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 591
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 592), N'01', N'01001503', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 592
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 593), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 593
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 594), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 594
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 595), N'01', N'01001564', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 595
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 596), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 596
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 597), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 597
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 598), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 598
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 599), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 599
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 600), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 600
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 601), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 601
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 602), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 602
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 603), N'01', N'03000150', 1,
    85.99, 85.99, 85.99, 0, 85.99,
    85.99, 85.99, 85.99, 0,
    NULL, NULL, NULL, 0, 1, 603
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 604), N'01', N'01001824', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 604
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 605), N'01', N'01002214', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 605
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 606), N'01', N'01001329', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 606
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 607), N'01', N'01001337', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 607
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 608), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 608
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 609), N'01', N'01001115', 1,
    19.58, 19.58, 19.58, 0, 19.58,
    19.58, 19.58, 19.58, 0,
    NULL, NULL, NULL, 0, 1, 609
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 610), N'01', N'01000387', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 610
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 611), N'01', N'01002685', 2,
    31.52, 31.52, 63.04, 0, 63.04,
    31.52, 63.04, 63.04, 0,
    NULL, NULL, NULL, 0, 1, 611
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 612), N'01', N'01002219', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 612
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 613), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 613
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 614), N'01', N'01000615', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 614
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 615), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 615
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 616), N'01', N'01001092', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 616
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 617), N'01', N'01001863', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 617
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 618), N'01', N'01001039', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 618
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 619), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 619
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 620), N'01', N'01002191', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 620
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 621), N'01', N'01001450', 2,
    30.77, 30.77, 61.54, 0, 61.54,
    30.77, 61.54, 61.54, 0,
    NULL, NULL, NULL, 0, 1, 621
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 622), N'01', N'01002374', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 622
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 623), N'01', N'01001530', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 623
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 624), N'01', N'01000185', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 624
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 625), N'01', N'01000031', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 625
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 626), N'01', N'01000031', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 626
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 627), N'01', N'01000473', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 627
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 628), N'01', N'01002689', 1,
    21.97, 21.97, 21.97, 0, 21.97,
    21.97, 21.97, 21.97, 0,
    NULL, NULL, NULL, 0, 1, 628
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 629), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 629
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 630), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 630
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 631), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 631
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 632), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 632
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 633), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 633
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 634), N'01', N'01001813', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 634
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 635), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 635
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 636), N'01', N'01001564', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 636
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 637), N'01', N'01000389', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 637
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 638), N'01', N'01002381', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 638
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 639), N'01', N'05000045', 1,
    16.99, 16.99, 16.99, 0, 16.99,
    16.99, 16.99, 16.99, 0,
    NULL, NULL, NULL, 0, 1, 639
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 640), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 640
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 641), N'01', N'01002417', 3,
    44.99, 44.99, 134.97, 0, 134.97,
    44.99, 134.97, 134.97, 0,
    NULL, NULL, NULL, 0, 1, 641
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 642), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 642
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 643), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 643
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 644), N'01', N'01001234', 1,
    13.99, 13.99, 13.99, 0, 13.99,
    13.99, 13.99, 13.99, 0,
    NULL, NULL, NULL, 0, 1, 644
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 645), N'01', N'01001997', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 645
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
    NULL, NULL, NULL, 0, 1, 646
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 647), N'01', N'05000041', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 647
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 648), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 648
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 649), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 649
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 650), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 650
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 651), N'01', N'01001270', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 651
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 652), N'01', N'01001422', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 652
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 653), N'01', N'01002588', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 653
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 654), N'01', N'01001739', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 654
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 655), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 655
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 656), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 656
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 657), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 657
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 658), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 658
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 659), N'01', N'05000082', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 659
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 660), N'01', N'01000843', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 660
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 661), N'01', N'01000843', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 661
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 662), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 662
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 663), N'01', N'01001596', 2,
    28.99, 28.99, 57.98, 0, 57.98,
    28.99, 57.98, 57.98, 0,
    NULL, NULL, NULL, 0, 1, 663
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 664), N'01', N'01001337', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 664
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 665), N'01', N'01001379', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 665
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 666), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 666
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 667), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 667
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 668), N'01', N'01001089', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 668
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 669), N'01', N'01001048', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 669
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 670), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 670
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 671), N'01', N'01001081', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 671
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 672), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 672
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 673), N'01', N'01000604', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 673
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 674), N'01', N'01001565', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 674
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 675), N'01', N'01001381', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 675
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 676), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 676
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 677), N'01', N'01001151', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 677
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 678), N'01', N'01003313', 1,
    48.29, 48.29, 48.29, 0, 48.29,
    48.29, 48.29, 48.29, 0,
    NULL, NULL, NULL, 0, 1, 678
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 679), N'01', N'01001042', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 679
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 680), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 680
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 681), N'01', N'01000389', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 681
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 682), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 682
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 683), N'01', N'01001226', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 683
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 684), N'01', N'01002169', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 684
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 685), N'01', N'01002602', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 685
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 686), N'01', N'01001453', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 686
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 687), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 687
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 688), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 688
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 689), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 689
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 690), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 690
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 691), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 691
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 692), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 692
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 693), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 693
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 694), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 694
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 695), N'01', N'01001930', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 695
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 696), N'01', N'01001955', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 696
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 697), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 697
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 698), N'01', N'01001906', 2,
    37.99, 37.99, 75.98, 0, 75.98,
    37.99, 75.98, 75.98, 0,
    NULL, NULL, NULL, 0, 1, 698
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 699), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 699
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 700), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 700
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 701), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 701
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 702), N'01', N'01001483', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 702
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 703), N'01', N'01001339', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 703
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 704), N'01', N'01001568', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 704
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 705), N'01', N'09000019', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 705
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 706), N'01', N'01002381', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 706
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 707), N'01', N'01002220', 3,
    40.99, 40.99, 122.97, 0, 122.97,
    40.99, 122.97, 122.97, 0,
    NULL, NULL, NULL, 0, 1, 707
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 708), N'01', N'01001805', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 708
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 709), N'01', N'01001503', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 709
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 710), N'01', N'01000124', 1,
    28.88, 28.88, 28.88, 0, 28.88,
    28.88, 28.88, 28.88, 0,
    NULL, NULL, NULL, 0, 1, 710
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 711), N'01', N'01000124', 1,
    28.88, 28.88, 28.88, 0, 28.88,
    28.88, 28.88, 28.88, 0,
    NULL, NULL, NULL, 0, 1, 711
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 712), N'01', N'01000124', 1,
    28.88, 28.88, 28.88, 0, 28.88,
    28.88, 28.88, 28.88, 0,
    NULL, NULL, NULL, 0, 1, 712
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 713), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 713
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 714), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 714
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 715), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 715
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 716), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 716
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 717), N'01', N'01000404', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 717
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 718), N'01', N'01000388', 2,
    39.99, 39.99, 79.98, 0, 79.98,
    39.99, 79.98, 79.98, 0,
    NULL, NULL, NULL, 0, 1, 718
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 719), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 719
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 720), N'01', N'05000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 720
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 721), N'01', N'01001801', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 721
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 722), N'01', N'01000021', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 722
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 723), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 723
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 724), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 724
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 725), N'01', N'01000020', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 725
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 726), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 726
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 727), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 727
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 728), N'01', N'05000081', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 728
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 729), N'01', N'01002235', 1,
    38.94, 38.94, 38.94, 0, 38.94,
    38.94, 38.94, 38.94, 0,
    NULL, NULL, NULL, 0, 1, 729
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 730), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 730
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 731), N'01', N'01001337', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 731
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 732), N'01', N'01001603', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 732
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 733), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 733
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 734), N'01', N'01000473', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 734
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 735), N'01', N'01002235', 1,
    38.94, 38.94, 38.94, 0, 38.94,
    38.94, 38.94, 38.94, 0,
    NULL, NULL, NULL, 0, 1, 735
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 736), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 736
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 737), N'01', N'01000613', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 737
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 738), N'01', N'01001094', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 738
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 739), N'01', N'01001609', 1,
    17.28, 17.28, 17.28, 0, 17.28,
    17.28, 17.28, 17.28, 0,
    NULL, NULL, NULL, 0, 1, 739
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 740), N'01', N'01000613', 3,
    41.99, 41.99, 125.97, 0, 125.97,
    41.99, 125.97, 125.97, 0,
    NULL, NULL, NULL, 0, 1, 740
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 741), N'01', N'01002259', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 741
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 742), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 742
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 743), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 743
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 744), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 744
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 745), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 745
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 746), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 746
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 747), N'01', N'01001570', 2,
    32.29, 32.29, 64.58, 0, 64.58,
    32.29, 64.58, 64.58, 0,
    NULL, NULL, NULL, 0, 1, 747
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 748), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 748
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 749), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 749
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 750), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 750
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 751), N'01', N'01000359', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 751
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 752), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 752
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 753), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 753
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 754), N'01', N'01001165', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 754
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 755), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 755
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
    NULL, NULL, NULL, 0, 1, 756
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 757), N'01', N'01000573', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 757
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 758), N'01', N'01002342', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 758
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 759), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 759
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 760), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 760
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 761), N'01', N'01001143', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 761
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 762), N'01', N'03000138', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 762
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 763), N'01', N'01001534', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 763
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 764), N'01', N'01001422', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 764
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 765), N'01', N'01002010', 1,
    22.04, 22.04, 22.04, 0, 22.04,
    22.04, 22.04, 22.04, 0,
    NULL, NULL, NULL, 0, 1, 765
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 766), N'01', N'01000616', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 766
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 767), N'01', N'01002256', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 767
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 768), N'01', N'02000737', 1,
    51.99, 51.99, 51.99, 0, 51.99,
    51.99, 51.99, 51.99, 0,
    NULL, NULL, NULL, 0, 1, 768
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 769), N'01', N'01000151', 2,
    44.64, 44.64, 89.28, 0, 89.28,
    44.64, 89.28, 89.28, 0,
    NULL, NULL, NULL, 0, 1, 769
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 770), N'01', N'02000737', 1,
    51.99, 51.99, 51.99, 0, 51.99,
    51.99, 51.99, 51.99, 0,
    NULL, NULL, NULL, 0, 1, 770
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 771), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 771
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 772), N'01', N'03000173', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 772
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 773), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 773
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 774), N'01', N'01000586', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 774
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 775), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 775
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 776), N'01', N'01000148', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 776
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 777), N'01', N'01000148', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 777
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 778), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 778
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
    NULL, NULL, NULL, 0, 1, 779
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 780), N'01', N'03000172', 1,
    148.99, 148.99, 148.99, 0, 148.99,
    148.99, 148.99, 148.99, 0,
    NULL, NULL, NULL, 0, 1, 780
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 781), N'01', N'01001028', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 781
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
    NULL, NULL, NULL, 0, 1, 782
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 783), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 783
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 784), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 784
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 785), N'01', N'03000079', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 785
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 786), N'01', N'01001564', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 786
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 787), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 787
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 788), N'01', N'01001079', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 788
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 789), N'01', N'01001026', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 789
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 790), N'01', N'05000108', 2,
    18.23, 18.23, 36.46, 0, 36.46,
    18.23, 36.46, 36.46, 0,
    NULL, NULL, NULL, 0, 1, 790
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 791), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 791
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 792), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 792
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 793), N'01', N'01001453', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 793
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 794), N'01', N'01001453', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 794
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 795), N'01', N'01001081', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 795
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 796), N'01', N'01000574', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 796
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 797), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 797
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 798), N'01', N'01002362', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 798
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 799), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 799
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 800), N'01', N'01000614', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 800
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 801), N'01', N'01002167', 2,
    39.99, 39.99, 79.98, 0, 79.98,
    39.99, 79.98, 79.98, 0,
    NULL, NULL, NULL, 0, 1, 801
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 802), N'01', N'01002859', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 802
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 803), N'01', N'01001384', 1,
    25.98, 25.98, 25.98, 0, 25.98,
    25.98, 25.98, 25.98, 0,
    NULL, NULL, NULL, 0, 1, 803
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 804), N'01', N'01002335', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 804
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 805), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 805
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 806), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 806
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 807), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 807
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 808), N'01', N'03000191', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 808
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 809), N'01', N'01000020', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 809
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 810), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 810
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 811), N'01', N'01002381', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 811
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 812), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 812
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 813), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 813
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 814), N'01', N'01000149', 1,
    30.09, 30.09, 30.09, 0, 30.09,
    30.09, 30.09, 30.09, 0,
    NULL, NULL, NULL, 0, 1, 814
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 815), N'01', N'01000149', 1,
    30.09, 30.09, 30.09, 0, 30.09,
    30.09, 30.09, 30.09, 0,
    NULL, NULL, NULL, 0, 1, 815
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 816), N'01', N'02000747', 1,
    65.24, 65.24, 65.24, 0, 65.24,
    65.24, 65.24, 65.24, 0,
    NULL, NULL, NULL, 0, 1, 816
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 817), N'01', N'03000067', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 817
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 818), N'01', N'03000067', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 818
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 819), N'01', N'01000021', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 819
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 820), N'01', N'01001318', 2,
    26.16, 26.16, 52.32, 0, 52.32,
    26.16, 52.32, 52.32, 0,
    NULL, NULL, NULL, 0, 1, 820
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 821), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 821
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 822), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 822
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 823), N'01', N'01001113', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 823
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 824), N'01', N'01001918', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 824
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 825), N'01', N'01000829', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 825
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 826), N'01', N'02000754', 1,
    71.54, 71.54, 71.54, 0, 71.54,
    71.54, 71.54, 71.54, 0,
    NULL, NULL, NULL, 0, 1, 826
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 827), N'01', N'01001091', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 827
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 828), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 828
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 829), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 829
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 830), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 830
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 831), N'01', N'01001843', 1,
    25.19, 25.19, 25.19, 0, 25.19,
    25.19, 25.19, 25.19, 0,
    NULL, NULL, NULL, 0, 1, 831
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 832), N'01', N'01000124', 1,
    28.88, 28.88, 28.88, 0, 28.88,
    28.88, 28.88, 28.88, 0,
    NULL, NULL, NULL, 0, 1, 832
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 833), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 833
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 834), N'01', N'01001379', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 834
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 835), N'01', N'01002428', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 835
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 836), N'01', N'01001840', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 836
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 837), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 837
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 838), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 838
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 839), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 839
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 840), N'01', N'01002235', 1,
    38.94, 38.94, 38.94, 0, 38.94,
    38.94, 38.94, 38.94, 0,
    NULL, NULL, NULL, 0, 1, 840
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 841), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 841
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 842), N'01', N'01001381', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 842
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 843), N'01', N'03000119', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 843
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 844), N'01', N'01001329', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 844
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 845), N'01', N'01001843', 2,
    33.74, 33.74, 67.48, 0, 67.48,
    33.74, 67.48, 67.48, 0,
    NULL, NULL, NULL, 0, 1, 845
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 846), N'01', N'01000437', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 846
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 847), N'01', N'01000177', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 847
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 848), N'01', N'12000001', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 848
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 849), N'01', N'01001079', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 849
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 850), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 850
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 851), N'01', N'01000406', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 851
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 852), N'01', N'01001044', 1,
    24.6, 24.6, 24.6, 0, 24.6,
    24.6, 24.6, 24.6, 0,
    NULL, NULL, NULL, 0, 1, 852
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 853), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 853
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 854), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 854
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 855), N'01', N'01000589', 2,
    48.99, 48.99, 97.98, 0, 97.98,
    48.99, 97.98, 97.98, 0,
    NULL, NULL, NULL, 0, 1, 855
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 856), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 856
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 857), N'01', N'01001090', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 857
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 858), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 858
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 859), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 859
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 860), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 860
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 861), N'01', N'01000641', 2,
    41.99, 41.99, 83.98, 0, 83.98,
    41.99, 83.98, 83.98, 0,
    NULL, NULL, NULL, 0, 1, 861
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 862), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 862
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 863), N'01', N'01001235', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 863
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 864), N'01', N'01001968', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 864
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 865), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 865
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 866), N'01', N'03000203', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 866
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 867), N'01', N'01001813', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 867
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 868), N'01', N'01001044', 2,
    24.6, 24.6, 49.2, 0, 49.2,
    24.6, 49.2, 49.2, 0,
    NULL, NULL, NULL, 0, 1, 868
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 869), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 869
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 870), N'01', N'03000320', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 870
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 871), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 871
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 872), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 872
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 873), N'01', N'01001193', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 873
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 874), N'01', N'01002242', 1,
    28.69, 28.69, 28.69, 0, 28.69,
    28.69, 28.69, 28.69, 0,
    NULL, NULL, NULL, 0, 1, 874
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 875), N'01', N'01000496', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 875
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 876), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 876
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 877), N'01', N'01002356', 4,
    39.61, 39.61, 158.44, 0, 158.44,
    39.61, 158.44, 158.44, 0,
    NULL, NULL, NULL, 0, 1, 877
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 878), N'01', N'05000079', 1,
    18.89, 18.89, 18.89, 0, 18.89,
    18.89, 18.89, 18.89, 0,
    NULL, NULL, NULL, 0, 1, 878
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 879), N'01', N'01002197', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 879
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 880), N'01', N'01001164', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 880
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 881), N'01', N'01001093', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 881
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 882), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 882
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 883), N'01', N'01000496', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 883
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 884), N'01', N'01001530', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 884
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 885), N'01', N'01002010', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 885
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 886), N'01', N'01000441', 1,
    37.39, 37.39, 37.39, 0, 37.39,
    37.39, 37.39, 37.39, 0,
    NULL, NULL, NULL, 0, 1, 886
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 887), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 887
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 888), N'01', N'01001379', 3,
    29.99, 29.99, 89.97, 0, 89.97,
    29.99, 89.97, 89.97, 0,
    NULL, NULL, NULL, 0, 1, 888
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 889), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 889
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 890), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 890
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 891), N'01', N'01001798', 2,
    28.49, 28.49, 56.98, 0, 56.98,
    28.49, 56.98, 56.98, 0,
    NULL, NULL, NULL, 0, 1, 891
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 892), N'01', N'01001037', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 892
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 893), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 893
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 894), N'01', N'01001840', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 894
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 895), N'01', N'01001824', 2,
    30.59, 30.59, 61.18, 0, 61.18,
    30.59, 61.18, 61.18, 0,
    NULL, NULL, NULL, 0, 1, 895
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 896), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 896
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 897), N'01', N'01002170', 2,
    52.99, 52.99, 105.98, 0, 105.98,
    52.99, 105.98, 105.98, 0,
    NULL, NULL, NULL, 0, 1, 897
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 898), N'01', N'03000191', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 898
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 899), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 899
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 900), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 900
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 901), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 901
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 902), N'01', N'01001486', 1,
    26.63, 26.63, 26.63, 0, 26.63,
    26.63, 26.63, 26.63, 0,
    NULL, NULL, NULL, 0, 1, 902
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 903), N'01', N'01001076', 2,
    28.99, 28.99, 57.98, 0, 57.98,
    28.99, 57.98, 57.98, 0,
    NULL, NULL, NULL, 0, 1, 903
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 904), N'01', N'01001076', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 904
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 905), N'01', N'01001263', 3,
    25.99, 25.99, 77.97, 0, 77.97,
    25.99, 77.97, 77.97, 0,
    NULL, NULL, NULL, 0, 1, 905
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 906), N'01', N'05000011', 4,
    19.59, 19.59, 78.36, 0, 78.36,
    19.59, 78.36, 78.36, 0,
    NULL, NULL, NULL, 0, 1, 906
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 907), N'01', N'01001930', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 907
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 908), N'01', N'01001590', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 908
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 909), N'01', N'01001826', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 909
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 910), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 910
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 911), N'01', N'01001276', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 911
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 912), N'01', N'01001337', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 912
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 913), N'01', N'01000440', 1,
    35.69, 35.69, 35.69, 0, 35.69,
    35.69, 35.69, 35.69, 0,
    NULL, NULL, NULL, 0, 1, 913
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 914), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 914
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 915), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 915
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 916), N'01', N'01002388', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 916
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 917), N'01', N'01000495', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 917
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 918), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 918
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 919), N'01', N'01001571', 3,
    33.99, 33.99, 101.97, 0, 101.97,
    33.99, 101.97, 101.97, 0,
    NULL, NULL, NULL, 0, 1, 919
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 920), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 920
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 921), N'01', N'05000076', 3,
    38.99, 38.99, 116.97, 0, 116.97,
    38.99, 116.97, 116.97, 0,
    NULL, NULL, NULL, 0, 1, 921
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 922), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 922
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 923), N'01', N'01000498', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 923
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 924), N'01', N'05000082', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 924
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 925), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 925
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 926), N'01', N'01001379', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 926
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 927), N'01', N'05000011', 3,
    18.39, 18.39, 55.17, 0, 55.17,
    18.39, 55.17, 55.17, 0,
    NULL, NULL, NULL, 0, 1, 927
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 928), N'01', N'01000997', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 928
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 929), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 929
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 930), N'01', N'01001957', 4,
    33.99, 33.99, 135.96, 0, 135.96,
    33.99, 135.96, 135.96, 0,
    NULL, NULL, NULL, 0, 1, 930
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 931), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 931
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 932), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 932
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 933), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 933
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 934), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 934
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 935), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 935
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 936), N'01', N'01001957', 4,
    33.99, 33.99, 135.96, 0, 135.96,
    33.99, 135.96, 135.96, 0,
    NULL, NULL, NULL, 0, 1, 936
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 937), N'01', N'05000011', 3,
    19.59, 19.59, 58.77, 0, 58.77,
    19.59, 58.77, 58.77, 0,
    NULL, NULL, NULL, 0, 1, 937
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 938), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 938
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 939), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 939
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 940), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 940
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 941), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 941
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 942), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 942
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 943), N'01', N'01001365', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 943
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 944), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 944
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 945), N'01', N'03000311', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 945
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 946), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 946
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
    NULL, NULL, NULL, 0, 1, 947
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 948), N'01', N'01000587', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 948
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 949), N'01', N'01000603', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 949
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 950), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 950
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 951), N'01', N'01001487', 1,
    27.35, 27.35, 27.35, 0, 27.35,
    27.35, 27.35, 27.35, 0,
    NULL, NULL, NULL, 0, 1, 951
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 952), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 952
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 953), N'01', N'03000176', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 953
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 954), N'01', N'01001932', 2,
    34.19, 34.19, 68.38, 0, 68.38,
    34.19, 68.38, 68.38, 0,
    NULL, NULL, NULL, 0, 1, 954
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 955), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 955
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 956), N'01', N'01001026', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 956
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 957), N'01', N'01002339', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 957
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 958), N'01', N'01000387', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 958
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 959), N'01', N'01000387', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 959
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 960), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 960
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 961), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 961
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 962), N'01', N'03000132', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 962
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 963), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 963
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 964), N'01', N'03000142', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 964
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 965), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 965
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 966), N'01', N'01001322', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 966
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 967), N'01', N'12000006', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 967
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 968), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 968
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 969), N'01', N'01001881', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 969
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 970), N'01', N'01000618', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 970
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 971), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 971
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 972), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 972
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 973), N'01', N'01002009', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 973
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 974), N'01', N'01000498', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 974
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 975), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 975
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 976), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 976
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 977), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 977
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 978), N'01', N'01002603', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 978
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 979), N'01', N'01001553', 2,
    21.99, 21.99, 43.98, 0, 43.98,
    21.99, 43.98, 43.98, 0,
    NULL, NULL, NULL, 0, 1, 979
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 980), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 980
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 981), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 981
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 982), N'01', N'01001443', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 982
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 983), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 983
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 984), N'01', N'01001381', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 984
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 985), N'01', N'01000265', 2,
    34.39, 34.39, 68.78, 0, 68.78,
    34.39, 68.78, 68.78, 0,
    NULL, NULL, NULL, 0, 1, 985
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 986), N'01', N'01002589', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 986
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 987), N'01', N'12000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 987
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 988), N'01', N'01002188', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 988
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 989), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 989
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 990), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 990
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 991), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 991
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 992), N'01', N'03000107', 1,
    159.99, 159.99, 159.99, 0, 159.99,
    159.99, 159.99, 159.99, 0,
    NULL, NULL, NULL, 0, 1, 992
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 993), N'01', N'01001571', 4,
    33.99, 33.99, 135.96, 0, 135.96,
    33.99, 135.96, 135.96, 0,
    NULL, NULL, NULL, 0, 1, 993
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 994), N'01', N'03000199', 1,
    149.39, 149.39, 149.39, 0, 149.39,
    149.39, 149.39, 149.39, 0,
    NULL, NULL, NULL, 0, 1, 994
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 995), N'01', N'01000514', 3,
    25.99, 25.99, 77.97, 0, 77.97,
    25.99, 77.97, 77.97, 0,
    NULL, NULL, NULL, 0, 1, 995
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 996), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 996
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 997), N'01', N'01002346', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 997
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 998), N'01', N'01000477', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 998
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 999), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 999
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 1000), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 1000
);

COMMIT TRANSACTION;
END TRY
BEGIN CATCH
    ROLLBACK TRANSACTION;
    DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
    RAISERROR(@ErrorMessage, 16, 1);
END CATCH;

-- 更新identity
UPDATE ua_identity SET ifatherid = (SELECT MAX(DLID) FROM DispatchList), ichildid = (SELECT MAX(iDLsID) FROM DispatchLists) WHERE cacc_id = '603' AND cvouchtype = 'DISPATCH';