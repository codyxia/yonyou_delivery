/* ========================================
   用友U8发货单SQL - 明细分片
   单据号: FBA26020001-1
   本片明细: 1000 条
   起始行号: 2001
   生成时间: 2026-03-31 13:19:29
   ======================================== */

-- 此为第 3 部分，共 5 部分

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
    @DLID, (@iDLsID + 0 + 1), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2001
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 2), N'01', N'01001799', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2002
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 3), N'01', N'01002237', 4,
    41.79, 41.79, 167.16, 0, 167.16,
    41.79, 167.16, 167.16, 0,
    NULL, NULL, NULL, 0, 1, 2003
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 4), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2004
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 5), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2005
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 6), N'01', N'03000131', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 2006
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 7), N'01', N'01001703', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2007
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 8), N'01', N'01002388', 1,
    41.79, 41.79, 41.79, 0, 41.79,
    41.79, 41.79, 41.79, 0,
    NULL, NULL, NULL, 0, 1, 2008
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 9), N'01', N'03000162', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2009
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 10), N'01', N'01001991', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 2010
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 11), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2011
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 12), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2012
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 13), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2013
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 14), N'01', N'01001906', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 2014
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 15), N'01', N'01001929', 1,
    18.89, 18.89, 18.89, 0, 18.89,
    18.89, 18.89, 18.89, 0,
    NULL, NULL, NULL, 0, 1, 2015
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 16), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2016
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 17), N'01', N'01002338', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 2017
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 18), N'01', N'01001762', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 2018
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 19), N'01', N'01002298', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2019
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 20), N'01', N'01000197', 3,
    31.99, 31.99, 95.97, 0, 95.97,
    31.99, 95.97, 95.97, 0,
    NULL, NULL, NULL, 0, 1, 2020
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 21), N'01', N'03000307', 1,
    20.99, 20.99, 20.99, 0, 20.99,
    20.99, 20.99, 20.99, 0,
    NULL, NULL, NULL, 0, 1, 2021
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 22), N'01', N'01002325', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 2022
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 23), N'01', N'01001178', 6,
    21.99, 21.99, 131.94, 0, 131.94,
    21.99, 131.94, 131.94, 0,
    NULL, NULL, NULL, 0, 1, 2023
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 24), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2024
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 25), N'01', N'01002179', 5,
    39.989999999999995, 39.989999999999995, 199.95, 0, 199.95,
    39.989999999999995, 199.95, 199.95, 0,
    NULL, NULL, NULL, 0, 1, 2025
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 26), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2026
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 27), N'01', N'01000022', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2027
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 28), N'01', N'01001557', 1,
    28.87, 28.87, 28.87, 0, 28.87,
    28.87, 28.87, 28.87, 0,
    NULL, NULL, NULL, 0, 1, 2028
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
    NULL, NULL, NULL, 0, 1, 2029
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 30), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2030
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 31), N'01', N'01000164', 1,
    25.44, 25.44, 25.44, 0, 25.44,
    25.44, 25.44, 25.44, 0,
    NULL, NULL, NULL, 0, 1, 2031
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 32), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2032
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 33), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2033
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 34), N'01', N'01001189', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 2034
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 35), N'01', N'01001073', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2035
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 36), N'01', N'01001612', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 2036
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 37), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2037
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 38), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2038
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 39), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 2039
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 40), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2040
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 41), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2041
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 42), N'01', N'01001319', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 2042
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 43), N'01', N'01001956', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 2043
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 44), N'01', N'01001365', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2044
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 45), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2045
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 46), N'01', N'01001742', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 2046
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 47), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2047
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 48), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 2048
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 49), N'01', N'03000193', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 2049
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 50), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2050
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 51), N'01', N'01001503', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2051
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 52), N'01', N'01000437', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2052
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 53), N'01', N'03000206', 1,
    9.99, 9.99, 9.99, 0, 9.99,
    9.99, 9.99, 9.99, 0,
    NULL, NULL, NULL, 0, 1, 2053
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 54), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2054
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 55), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 2055
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 56), N'01', N'01001731', 1,
    32.48, 32.48, 32.48, 0, 32.48,
    32.48, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 2056
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 57), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2057
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 58), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2058
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 59), N'01', N'01001166', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 2059
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 60), N'01', N'01001931', 3,
    34.99, 34.99, 104.97, 0, 104.97,
    34.99, 104.97, 104.97, 0,
    NULL, NULL, NULL, 0, 1, 2060
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 61), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2061
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 62), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 2062
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 63), N'01', N'01000458', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2063
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 64), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2064
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 65), N'01', N'03000197', 1,
    58.98, 58.98, 58.98, 0, 58.98,
    58.98, 58.98, 58.98, 0,
    NULL, NULL, NULL, 0, 1, 2065
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 66), N'01', N'01001927', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 2066
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
    NULL, NULL, NULL, 0, 1, 2067
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 68), N'01', N'01001234', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 2068
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 69), N'01', N'01000023', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 2069
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 70), N'01', N'01001333', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 2070
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 71), N'01', N'01001726', 1,
    15.72, 15.72, 15.72, 0, 15.72,
    15.72, 15.72, 15.72, 0,
    NULL, NULL, NULL, 0, 1, 2071
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 72), N'01', N'03000322', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2072
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 73), N'01', N'01000322', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2073
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 74), N'01', N'01002589', 2,
    21.99, 21.99, 43.98, 0, 43.98,
    21.99, 43.98, 43.98, 0,
    NULL, NULL, NULL, 0, 1, 2074
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 75), N'01', N'03000054', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2075
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 76), N'01', N'01001079', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2076
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 77), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 2077
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 78), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2078
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 79), N'01', N'01002205', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2079
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 80), N'01', N'14000006', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2080
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 81), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2081
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 82), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 2082
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 83), N'01', N'01001050', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 2083
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 84), N'01', N'05000035', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2084
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 85), N'01', N'01002680', 1,
    15.67, 15.67, 15.67, 0, 15.67,
    15.67, 15.67, 15.67, 0,
    NULL, NULL, NULL, 0, 1, 2085
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 86), N'01', N'03000058', 1,
    22.94, 22.94, 22.94, 0, 22.94,
    22.94, 22.94, 22.94, 0,
    NULL, NULL, NULL, 0, 1, 2086
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 87), N'01', N'03000278', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 2087
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 88), N'01', N'01001330', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2088
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 89), N'01', N'01001305', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 2089
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 90), N'01', N'01001275', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 2090
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 91), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2091
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 92), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2092
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 93), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2093
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 94), N'01', N'01001503', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 2094
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 95), N'01', N'01002366', 3,
    55.09, 55.09, 165.27, 0, 165.27,
    55.09, 165.27, 165.27, 0,
    NULL, NULL, NULL, 0, 1, 2095
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 96), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 2096
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 97), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2097
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 98), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2098
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 99), N'01', N'03000196', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2099
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 100), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2100
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 101), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2101
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 102), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2102
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 103), N'01', N'08000004', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 2103
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 104), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2104
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 105), N'01', N'01001201', 1,
    30.67, 30.67, 30.67, 0, 30.67,
    30.67, 30.67, 30.67, 0,
    NULL, NULL, NULL, 0, 1, 2105
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 106), N'01', N'01001530', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 2106
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 107), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2107
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 108), N'01', N'03000215', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2108
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 109), N'01', N'01001956', 4,
    31.34, 31.34, 125.36, 0, 125.36,
    31.34, 125.36, 125.36, 0,
    NULL, NULL, NULL, 0, 1, 2109
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 110), N'01', N'01001026', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2110
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 111), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2111
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 112), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2112
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 113), N'01', N'01001956', 2,
    31.34, 31.34, 62.68, 0, 62.68,
    31.34, 62.68, 62.68, 0,
    NULL, NULL, NULL, 0, 1, 2113
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 114), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2114
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 115), N'01', N'01001907', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2115
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 116), N'01', N'01001907', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 2116
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 117), N'01', N'03000170', 1,
    68.99, 68.99, 68.99, 0, 68.99,
    68.99, 68.99, 68.99, 0,
    NULL, NULL, NULL, 0, 1, 2117
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 118), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2118
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 119), N'01', N'05000009', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2119
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 120), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2120
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 121), N'01', N'03000184', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2121
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 122), N'01', N'01000644', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2122
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 123), N'01', N'01000498', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2123
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 124), N'01', N'01002691', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2124
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 125), N'01', N'03000160', 1,
    115.99, 115.99, 115.99, 0, 115.99,
    115.99, 115.99, 115.99, 0,
    NULL, NULL, NULL, 0, 1, 2125
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 126), N'01', N'01001570', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2126
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 127), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2127
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 128), N'01', N'01002412', 2,
    48.99, 48.99, 97.98, 0, 97.98,
    48.99, 97.98, 97.98, 0,
    NULL, NULL, NULL, 0, 1, 2128
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 129), N'01', N'01002412', 2,
    48.99, 48.99, 97.98, 0, 97.98,
    48.99, 97.98, 97.98, 0,
    NULL, NULL, NULL, 0, 1, 2129
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 130), N'01', N'07000006', 1,
    36.8, 36.8, 36.8, 0, 36.8,
    36.8, 36.8, 36.8, 0,
    NULL, NULL, NULL, 0, 1, 2130
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 131), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2131
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 132), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2132
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 133), N'01', N'05000006', 2,
    19.54, 19.54, 39.08, 0, 39.08,
    19.54, 39.08, 39.08, 0,
    NULL, NULL, NULL, 0, 1, 2133
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 134), N'01', N'01001988', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2134
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 135), N'01', N'01002412', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2135
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 136), N'01', N'01002412', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2136
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 137), N'01', N'01002235', 3,
    38.94, 38.94, 116.82, 0, 116.82,
    38.94, 116.82, 116.82, 0,
    NULL, NULL, NULL, 0, 1, 2137
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 138), N'01', N'01001379', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2138
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 139), N'01', N'01001379', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2139
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 140), N'01', N'01001161', 1,
    19.7, 19.7, 19.7, 0, 19.7,
    19.7, 19.7, 19.7, 0,
    NULL, NULL, NULL, 0, 1, 2140
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 141), N'01', N'03000164', 1,
    59.99, 59.99, 59.99, 0, 59.99,
    59.99, 59.99, 59.99, 0,
    NULL, NULL, NULL, 0, 1, 2141
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 142), N'01', N'01001117', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 2142
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 143), N'01', N'01001499', 1,
    20.99, 20.99, 20.99, 0, 20.99,
    20.99, 20.99, 20.99, 0,
    NULL, NULL, NULL, 0, 1, 2143
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
    NULL, NULL, NULL, 0, 1, 2144
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 145), N'01', N'01002244', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2145
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 146), N'01', N'01002244', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2146
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 147), N'01', N'01000437', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2147
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 148), N'01', N'01001292', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2148
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 149), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2149
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 150), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2150
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 151), N'01', N'08000002', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2151
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 152), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2152
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 153), N'01', N'01001045', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2153
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 154), N'01', N'01001383', 1,
    28.28, 28.28, 28.28, 0, 28.28,
    28.28, 28.28, 28.28, 0,
    NULL, NULL, NULL, 0, 1, 2154
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 155), N'01', N'05000039', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2155
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 156), N'01', N'01001487', 1,
    27.35, 27.35, 27.35, 0, 27.35,
    27.35, 27.35, 27.35, 0,
    NULL, NULL, NULL, 0, 1, 2156
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 157), N'01', N'01001575', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 2157
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 158), N'01', N'12000006', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2158
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 159), N'01', N'01001000', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2159
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 160), N'01', N'01001319', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 2160
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 161), N'01', N'01001369', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2161
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 162), N'01', N'03000192', 1,
    59.98, 59.98, 59.98, 0, 59.98,
    59.98, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 2162
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 163), N'01', N'01001084', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2163
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 164), N'01', N'01000331', 1,
    23.93, 23.93, 23.93, 0, 23.93,
    23.93, 23.93, 23.93, 0,
    NULL, NULL, NULL, 0, 1, 2164
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 165), N'01', N'01001931', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 2165
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 166), N'01', N'01001089', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 2166
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 167), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2167
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 168), N'01', N'01001231', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2168
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 169), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2169
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 170), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2170
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 171), N'01', N'05000077', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2171
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 172), N'01', N'05000077', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2172
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 173), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2173
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 174), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2174
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 175), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2175
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 176), N'01', N'01000200', 1,
    35.84, 35.84, 35.84, 0, 35.84,
    35.84, 35.84, 35.84, 0,
    NULL, NULL, NULL, 0, 1, 2176
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 177), N'01', N'01000200', 1,
    35.84, 35.84, 35.84, 0, 35.84,
    35.84, 35.84, 35.84, 0,
    NULL, NULL, NULL, 0, 1, 2177
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 178), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2178
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 179), N'01', N'05000102', 1,
    20.99, 20.99, 20.99, 0, 20.99,
    20.99, 20.99, 20.99, 0,
    NULL, NULL, NULL, 0, 1, 2179
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 180), N'01', N'01002645', 3,
    61.99, 61.99, 185.97, 0, 185.97,
    61.99, 185.97, 185.97, 0,
    NULL, NULL, NULL, 0, 1, 2180
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 181), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2181
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 182), N'01', N'03000193', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 2182
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 183), N'01', N'01000126', 1,
    34.39, 34.39, 34.39, 0, 34.39,
    34.39, 34.39, 34.39, 0,
    NULL, NULL, NULL, 0, 1, 2183
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 184), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 2184
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 185), N'01', N'01001907', 2,
    35.99, 35.99, 71.98, 0, 71.98,
    35.99, 71.98, 71.98, 0,
    NULL, NULL, NULL, 0, 1, 2185
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 186), N'01', N'01001907', 5,
    35.989999999999995, 35.989999999999995, 179.95, 0, 179.95,
    35.989999999999995, 179.95, 179.95, 0,
    NULL, NULL, NULL, 0, 1, 2186
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 187), N'01', N'01001957', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 2187
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 188), N'01', N'01000405', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2188
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 189), N'01', N'01000440', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2189
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 190), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2190
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 191), N'01', N'01000023', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 2191
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 192), N'01', N'01001866', 1,
    23.79, 23.79, 23.79, 0, 23.79,
    23.79, 23.79, 23.79, 0,
    NULL, NULL, NULL, 0, 1, 2192
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 193), N'01', N'03000165', 1,
    119.99, 119.99, 119.99, 0, 119.99,
    119.99, 119.99, 119.99, 0,
    NULL, NULL, NULL, 0, 1, 2193
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 194), N'01', N'01000386', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 2194
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 195), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2195
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 196), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2196
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 197), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2197
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 198), N'01', N'08000011', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 2198
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
    NULL, NULL, NULL, 0, 1, 2199
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 200), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2200
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 201), N'01', N'01001189', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 2201
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 202), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 2202
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 203), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 2203
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 204), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2204
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 205), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 2205
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 206), N'01', N'05000079', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2206
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 207), N'01', N'03000053', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2207
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 208), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2208
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 209), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 2209
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 210), N'01', N'01002191', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2210
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 211), N'01', N'01002355', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 2211
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
    NULL, NULL, NULL, 0, 1, 2212
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 213), N'01', N'05000014', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2213
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 214), N'01', N'01000386', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 2214
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 215), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2215
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 216), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2216
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 217), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2217
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 218), N'01', N'01002008', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 2218
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 219), N'01', N'01001316', 2,
    28.99, 28.99, 57.98, 0, 57.98,
    28.99, 57.98, 57.98, 0,
    NULL, NULL, NULL, 0, 1, 2219
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 220), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2220
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 221), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2221
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 222), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2222
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 223), N'01', N'01001568', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2223
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 224), N'01', N'01001708', 1,
    22.39, 22.39, 22.39, 0, 22.39,
    22.39, 22.39, 22.39, 0,
    NULL, NULL, NULL, 0, 1, 2224
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 225), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2225
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 226), N'01', N'01000863', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 2226
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 227), N'01', N'05000102', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2227
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 228), N'01', N'05000102', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2228
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 229), N'01', N'01001824', 1,
    30.59, 30.59, 30.59, 0, 30.59,
    30.59, 30.59, 30.59, 0,
    NULL, NULL, NULL, 0, 1, 2229
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 230), N'01', N'14000002', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2230
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 231), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2231
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 232), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2232
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 233), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2233
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 234), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2234
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 235), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 2235
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 236), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2236
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 237), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 2237
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 238), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2238
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 239), N'01', N'03000215', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2239
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 240), N'01', N'03000169', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 2240
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 241), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2241
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 242), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2242
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 243), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2243
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 244), N'01', N'01000440', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2244
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 245), N'01', N'01000440', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2245
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 246), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2246
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 247), N'01', N'01001929', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2247
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 248), N'01', N'01000644', 1,
    41.64, 41.64, 41.64, 0, 41.64,
    41.64, 41.64, 41.64, 0,
    NULL, NULL, NULL, 0, 1, 2248
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 249), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2249
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 250), N'01', N'01001855', 1,
    25.49, 25.49, 25.49, 0, 25.49,
    25.49, 25.49, 25.49, 0,
    NULL, NULL, NULL, 0, 1, 2250
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 251), N'01', N'01001920', 1,
    28.2, 28.2, 28.2, 0, 28.2,
    28.2, 28.2, 28.2, 0,
    NULL, NULL, NULL, 0, 1, 2251
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 252), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2252
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 253), N'01', N'01001958', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2253
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 254), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2254
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 255), N'01', N'01000543', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2255
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 256), N'01', N'01001115', 3,
    19.580000000000002, 19.580000000000002, 58.74, 0, 58.74,
    19.580000000000002, 58.74, 58.74, 0,
    NULL, NULL, NULL, 0, 1, 2256
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 257), N'01', N'03000197', 1,
    58.98, 58.98, 58.98, 0, 58.98,
    58.98, 58.98, 58.98, 0,
    NULL, NULL, NULL, 0, 1, 2257
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 258), N'01', N'01001879', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2258
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 259), N'01', N'01002010', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 2259
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 260), N'01', N'01001728', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2260
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 261), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2261
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 262), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2262
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 263), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2263
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 264), N'01', N'03000185', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 2264
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 265), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 2265
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 266), N'01', N'01001927', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 2266
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 267), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2267
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 268), N'01', N'01000455', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2268
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
    NULL, NULL, NULL, 0, 1, 2269
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
    NULL, NULL, NULL, 0, 1, 2270
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 271), N'01', N'01001116', 1,
    28.28, 28.28, 28.28, 0, 28.28,
    28.28, 28.28, 28.28, 0,
    NULL, NULL, NULL, 0, 1, 2271
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 272), N'01', N'01001932', 4,
    34.19, 34.19, 136.76, 0, 136.76,
    34.19, 136.76, 136.76, 0,
    NULL, NULL, NULL, 0, 1, 2272
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 273), N'01', N'01002422', 2,
    40.84, 40.84, 81.68, 0, 81.68,
    40.84, 81.68, 81.68, 0,
    NULL, NULL, NULL, 0, 1, 2273
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 274), N'01', N'01000359', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2274
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 275), N'01', N'01001381', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2275
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 276), N'01', N'01001568', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 2276
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 277), N'01', N'01002235', 1,
    38.94, 38.94, 38.94, 0, 38.94,
    38.94, 38.94, 38.94, 0,
    NULL, NULL, NULL, 0, 1, 2277
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 278), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2278
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 279), N'01', N'01000525', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 2279
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 280), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2280
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 281), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2281
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 282), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2282
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 283), N'01', N'01001026', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 2283
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 284), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2284
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 285), N'01', N'01001378', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2285
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 286), N'01', N'01001305', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 2286
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 287), N'01', N'01001568', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 2287
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 288), N'01', N'01002269', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 2288
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 289), N'01', N'01002228', 1,
    109.99, 109.99, 109.99, 0, 109.99,
    109.99, 109.99, 109.99, 0,
    NULL, NULL, NULL, 0, 1, 2289
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 290), N'01', N'03000150', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 2290
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 291), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2291
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 292), N'01', N'05000010', 3,
    24.99, 24.99, 74.97, 0, 74.97,
    24.99, 74.97, 74.97, 0,
    NULL, NULL, NULL, 0, 1, 2292
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 293), N'01', N'01001178', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2293
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 294), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2294
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 295), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2295
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 296), N'01', N'03000202', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 2296
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 297), N'01', N'01000436', 4,
    32.99, 32.99, 131.96, 0, 131.96,
    32.99, 131.96, 131.96, 0,
    NULL, NULL, NULL, 0, 1, 2297
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 298), N'01', N'01001957', 4,
    33.99, 33.99, 135.96, 0, 135.96,
    33.99, 135.96, 135.96, 0,
    NULL, NULL, NULL, 0, 1, 2298
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 299), N'01', N'01002010', 1,
    26.77, 26.77, 26.77, 0, 26.77,
    26.77, 26.77, 26.77, 0,
    NULL, NULL, NULL, 0, 1, 2299
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
    NULL, NULL, NULL, 0, 1, 2300
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 301), N'01', N'01000285', 6,
    39.99, 39.99, 239.94, 0, 239.94,
    39.99, 239.94, 239.94, 0,
    NULL, NULL, NULL, 0, 1, 2301
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
    NULL, NULL, NULL, 0, 1, 2302
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 303), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2303
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 304), N'01', N'01001447', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2304
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 305), N'01', N'01000149', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 2305
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 306), N'01', N'01000834', 1,
    51.99, 51.99, 51.99, 0, 51.99,
    51.99, 51.99, 51.99, 0,
    NULL, NULL, NULL, 0, 1, 2306
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 307), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2307
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 308), N'01', N'01001085', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 2308
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 309), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2309
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 310), N'01', N'01001506', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2310
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 311), N'01', N'01001498', 2,
    21.84, 21.84, 43.68, 0, 43.68,
    21.84, 43.68, 43.68, 0,
    NULL, NULL, NULL, 0, 1, 2311
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 312), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 2312
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 313), N'01', N'01001765', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 2313
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 314), N'01', N'03000191', 1,
    52.99, 52.99, 52.99, 0, 52.99,
    52.99, 52.99, 52.99, 0,
    NULL, NULL, NULL, 0, 1, 2314
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 315), N'01', N'03000109', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2315
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 316), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2316
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 317), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2317
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 318), N'01', N'01000893', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2318
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 319), N'01', N'03000282', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 2319
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 320), N'01', N'01001079', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2320
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 321), N'01', N'01001452', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2321
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 322), N'01', N'01001870', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2322
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 323), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2323
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 324), N'01', N'01001773', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2324
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 325), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 2325
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 326), N'01', N'01000759', 2,
    41.99, 41.99, 83.98, 0, 83.98,
    41.99, 83.98, 83.98, 0,
    NULL, NULL, NULL, 0, 1, 2326
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 327), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2327
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 328), N'01', N'01000602', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 2328
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 329), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 2329
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 330), N'01', N'01002160', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2330
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
    NULL, NULL, NULL, 0, 1, 2331
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
    NULL, NULL, NULL, 0, 1, 2332
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 333), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2333
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 334), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2334
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 335), N'01', N'01002239', 1,
    52.24, 52.24, 52.24, 0, 52.24,
    52.24, 52.24, 52.24, 0,
    NULL, NULL, NULL, 0, 1, 2335
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 336), N'01', N'01001840', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 2336
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 337), N'01', N'01000643', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2337
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 338), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2338
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 339), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 2339
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 340), N'01', N'01001462', 2,
    28.99, 28.99, 57.98, 0, 57.98,
    28.99, 57.98, 57.98, 0,
    NULL, NULL, NULL, 0, 1, 2340
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 341), N'01', N'03000318', 1,
    12.74, 12.74, 12.74, 0, 12.74,
    12.74, 12.74, 12.74, 0,
    NULL, NULL, NULL, 0, 1, 2341
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 342), N'01', N'01002211', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 2342
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 343), N'01', N'01002211', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 2343
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 344), N'01', N'01001996', 2,
    29.9, 29.9, 59.8, 0, 59.8,
    29.9, 59.8, 59.8, 0,
    NULL, NULL, NULL, 0, 1, 2344
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 345), N'01', N'01001957', 2,
    31.44, 31.44, 62.88, 0, 62.88,
    31.44, 62.88, 62.88, 0,
    NULL, NULL, NULL, 0, 1, 2345
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 346), N'01', N'14000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2346
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 347), N'01', N'01002196', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 2347
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 348), N'01', N'03000148', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2348
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 349), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2349
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 350), N'01', N'01001696', 1,
    28.41, 28.41, 28.41, 0, 28.41,
    28.41, 28.41, 28.41, 0,
    NULL, NULL, NULL, 0, 1, 2350
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 351), N'01', N'02000778', 1,
    133.19, 133.19, 133.19, 0, 133.19,
    133.19, 133.19, 133.19, 0,
    NULL, NULL, NULL, 0, 1, 2351
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 352), N'01', N'01001378', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2352
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 353), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2353
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 354), N'01', N'01000605', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2354
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 355), N'01', N'01000605', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2355
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 356), N'01', N'01001086', 1,
    27.54, 27.54, 27.54, 0, 27.54,
    27.54, 27.54, 27.54, 0,
    NULL, NULL, NULL, 0, 1, 2356
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 357), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2357
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 358), N'01', N'01001942', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2358
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 359), N'01', N'01001000', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2359
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 360), N'01', N'07000007', 1,
    29.59, 29.59, 29.59, 0, 29.59,
    29.59, 29.59, 29.59, 0,
    NULL, NULL, NULL, 0, 1, 2360
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 361), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2361
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 362), N'01', N'01001483', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 2362
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
    NULL, NULL, NULL, 0, 1, 2363
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 364), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 2364
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 365), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2365
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 366), N'01', N'01001102', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 2366
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 367), N'01', N'01001816', 4,
    36.99, 36.99, 147.96, 0, 147.96,
    36.99, 147.96, 147.96, 0,
    NULL, NULL, NULL, 0, 1, 2367
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 368), N'01', N'01001163', 2,
    22.46, 22.46, 44.92, 0, 44.92,
    22.46, 44.92, 44.92, 0,
    NULL, NULL, NULL, 0, 1, 2368
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 369), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2369
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 370), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2370
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 371), N'01', N'01000643', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2371
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 372), N'01', N'01001422', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2372
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 373), N'01', N'01001736', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 2373
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 374), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2374
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 375), N'01', N'01001736', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 2375
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 376), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2376
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 377), N'01', N'01000589', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2377
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 378), N'01', N'01001598', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2378
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 379), N'01', N'01001815', 2,
    37.99, 37.99, 75.98, 0, 75.98,
    37.99, 75.98, 75.98, 0,
    NULL, NULL, NULL, 0, 1, 2379
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 380), N'01', N'05000030', 2,
    17.99, 17.99, 35.98, 0, 35.98,
    17.99, 35.98, 35.98, 0,
    NULL, NULL, NULL, 0, 1, 2380
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 381), N'01', N'01000166', 1,
    39.81, 39.81, 39.81, 0, 39.81,
    39.81, 39.81, 39.81, 0,
    NULL, NULL, NULL, 0, 1, 2381
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 382), N'01', N'01001227', 1,
    22.71, 22.71, 22.71, 0, 22.71,
    22.71, 22.71, 22.71, 0,
    NULL, NULL, NULL, 0, 1, 2382
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 383), N'01', N'01002339', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 2383
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 384), N'01', N'01002409', 2,
    40.84, 40.84, 81.68, 0, 81.68,
    40.84, 81.68, 81.68, 0,
    NULL, NULL, NULL, 0, 1, 2384
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 385), N'01', N'01001530', 2,
    27.99, 27.99, 55.98, 0, 55.98,
    27.99, 55.98, 55.98, 0,
    NULL, NULL, NULL, 0, 1, 2385
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 386), N'01', N'14000001', 1,
    45.99, 45.99, 45.99, 0, 45.99,
    45.99, 45.99, 45.99, 0,
    NULL, NULL, NULL, 0, 1, 2386
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 387), N'01', N'01002009', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 2387
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 388), N'01', N'01001421', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 2388
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 389), N'01', N'01001443', 2,
    24.69, 24.69, 49.38, 0, 49.38,
    24.69, 49.38, 49.38, 0,
    NULL, NULL, NULL, 0, 1, 2389
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 390), N'01', N'01001231', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2390
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 391), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2391
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 392), N'01', N'05000010', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 2392
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 393), N'01', N'01001337', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2393
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 394), N'01', N'12000006', 1,
    32.98, 32.98, 32.98, 0, 32.98,
    32.98, 32.98, 32.98, 0,
    NULL, NULL, NULL, 0, 1, 2394
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 395), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2395
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 396), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2396
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 397), N'01', N'05000014', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2397
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 398), N'01', N'01000586', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2398
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 399), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2399
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 400), N'01', N'01001042', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2400
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 401), N'01', N'01001457', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 2401
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 402), N'01', N'01000616', 2,
    48.99, 48.99, 97.98, 0, 97.98,
    48.99, 97.98, 97.98, 0,
    NULL, NULL, NULL, 0, 1, 2402
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 403), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2403
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 404), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2404
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 405), N'01', N'01001381', 2,
    27.42, 27.42, 54.84, 0, 54.84,
    27.42, 54.84, 54.84, 0,
    NULL, NULL, NULL, 0, 1, 2405
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 406), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2406
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 407), N'01', N'01000603', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2407
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 408), N'01', N'01000603', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2408
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 409), N'01', N'01001787', 1,
    23.99, 23.99, 23.99, 0, 23.99,
    23.99, 23.99, 23.99, 0,
    NULL, NULL, NULL, 0, 1, 2409
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 410), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2410
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 411), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2411
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 412), N'01', N'03000140', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2412
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 413), N'01', N'01000151', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 2413
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 414), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2414
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 415), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2415
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 416), N'01', N'01002882', 1,
    35.83, 35.83, 35.83, 0, 35.83,
    35.83, 35.83, 35.83, 0,
    NULL, NULL, NULL, 0, 1, 2416
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 417), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2417
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
    NULL, NULL, NULL, 0, 1, 2418
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 419), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2419
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 420), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2420
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 421), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2421
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 422), N'01', N'05000039', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2422
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 423), N'01', N'01002429', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 2423
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 424), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2424
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 425), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2425
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
    NULL, NULL, NULL, 0, 1, 2426
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 427), N'01', N'01001130', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2427
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 428), N'01', N'01001598', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2428
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 429), N'01', N'14000006', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2429
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 430), N'01', N'01000268', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2430
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 431), N'01', N'03000086', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2431
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 432), N'01', N'01000441', 2,
    43.99, 43.99, 87.98, 0, 87.98,
    43.99, 87.98, 87.98, 0,
    NULL, NULL, NULL, 0, 1, 2432
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 433), N'01', N'01000986', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2433
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 434), N'01', N'01000986', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2434
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 435), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 2435
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 436), N'01', N'01000516', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 2436
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 437), N'01', N'07000007', 1,
    29.59, 29.59, 29.59, 0, 29.59,
    29.59, 29.59, 29.59, 0,
    NULL, NULL, NULL, 0, 1, 2437
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 438), N'01', N'03000171', 1,
    89.99, 89.99, 89.99, 0, 89.99,
    89.99, 89.99, 89.99, 0,
    NULL, NULL, NULL, 0, 1, 2438
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 439), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2439
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 440), N'01', N'05000108', 2,
    18.23, 18.23, 36.46, 0, 36.46,
    18.23, 36.46, 36.46, 0,
    NULL, NULL, NULL, 0, 1, 2440
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 441), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2441
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 442), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2442
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 443), N'01', N'01001684', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 2443
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 444), N'01', N'05000075', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2444
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 445), N'01', N'12000003', 1,
    16.98, 16.98, 16.98, 0, 16.98,
    16.98, 16.98, 16.98, 0,
    NULL, NULL, NULL, 0, 1, 2445
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 446), N'01', N'01000606', 2,
    41.99, 41.99, 83.98, 0, 83.98,
    41.99, 83.98, 83.98, 0,
    NULL, NULL, NULL, 0, 1, 2446
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 447), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2447
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 448), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2448
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 449), N'01', N'01001506', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2449
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 450), N'01', N'01000475', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2450
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 451), N'01', N'01001165', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2451
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 452), N'01', N'01001165', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2452
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 453), N'01', N'01000603', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2453
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 454), N'01', N'01001226', 2,
    19.99, 19.99, 39.98, 0, 39.98,
    19.99, 39.98, 39.98, 0,
    NULL, NULL, NULL, 0, 1, 2454
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 455), N'01', N'01000644', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2455
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 456), N'01', N'01001147', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 2456
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 457), N'01', N'01000644', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2457
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 458), N'01', N'01000622', 4,
    43.99, 43.99, 175.96, 0, 175.96,
    43.99, 175.96, 175.96, 0,
    NULL, NULL, NULL, 0, 1, 2458
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 459), N'01', N'01000022', 3,
    35.99, 35.99, 107.97, 0, 107.97,
    35.99, 107.97, 107.97, 0,
    NULL, NULL, NULL, 0, 1, 2459
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 460), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2460
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 461), N'01', N'01001379', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2461
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 462), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 2462
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 463), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 2463
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 464), N'01', N'12000006', 1,
    32.98, 32.98, 32.98, 0, 32.98,
    32.98, 32.98, 32.98, 0,
    NULL, NULL, NULL, 0, 1, 2464
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 465), N'01', N'01001165', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2465
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 466), N'01', N'01001918', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 2466
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 467), N'01', N'01002010', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 2467
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 468), N'01', N'01002009', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 2468
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 469), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2469
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
    NULL, NULL, NULL, 0, 1, 2470
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 471), N'01', N'01001084', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 2471
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 472), N'01', N'01000542', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2472
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 473), N'01', N'01002413', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2473
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 474), N'01', N'01002413', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2474
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 475), N'01', N'01000407', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2475
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 476), N'01', N'01001771', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2476
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 477), N'01', N'01001055', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2477
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 478), N'01', N'01002374', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2478
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 479), N'01', N'01002411', 4,
    44.64, 44.64, 178.56, 0, 178.56,
    44.64, 178.56, 178.56, 0,
    NULL, NULL, NULL, 0, 1, 2479
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 480), N'01', N'01001957', 2,
    33.99, 33.99, 67.98, 0, 67.98,
    33.99, 67.98, 67.98, 0,
    NULL, NULL, NULL, 0, 1, 2480
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
    NULL, NULL, NULL, 0, 1, 2481
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 482), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2482
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 483), N'01', N'01000437', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2483
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 484), N'01', N'01001028', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2484
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 485), N'01', N'01001319', 1,
    26.97, 26.97, 26.97, 0, 26.97,
    26.97, 26.97, 26.97, 0,
    NULL, NULL, NULL, 0, 1, 2485
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 486), N'01', N'01001085', 2,
    26.59, 26.59, 53.18, 0, 53.18,
    26.59, 53.18, 53.18, 0,
    NULL, NULL, NULL, 0, 1, 2486
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 487), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2487
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 488), N'01', N'05000108', 1,
    18.23, 18.23, 18.23, 0, 18.23,
    18.23, 18.23, 18.23, 0,
    NULL, NULL, NULL, 0, 1, 2488
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 489), N'01', N'01002381', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 2489
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 490), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2490
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 491), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2491
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 492), N'01', N'01001289', 4,
    26.59, 26.59, 106.36, 0, 106.36,
    26.59, 106.36, 106.36, 0,
    NULL, NULL, NULL, 0, 1, 2492
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 493), N'01', N'01001505', 1,
    24.85, 24.85, 24.85, 0, 24.85,
    24.85, 24.85, 24.85, 0,
    NULL, NULL, NULL, 0, 1, 2493
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 494), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2494
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 495), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2495
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 496), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2496
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 497), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2497
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 498), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2498
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 499), N'01', N'03000069', 1,
    22.6, 22.6, 22.6, 0, 22.6,
    22.6, 22.6, 22.6, 0,
    NULL, NULL, NULL, 0, 1, 2499
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 500), N'01', N'02000742', 1,
    59.39, 59.39, 59.39, 0, 59.39,
    59.39, 59.39, 59.39, 0,
    NULL, NULL, NULL, 0, 1, 2500
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 501), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 2501
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 502), N'01', N'02000740', 1,
    48.14, 48.14, 48.14, 0, 48.14,
    48.14, 48.14, 48.14, 0,
    NULL, NULL, NULL, 0, 1, 2502
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 503), N'01', N'02000740', 1,
    48.14, 48.14, 48.14, 0, 48.14,
    48.14, 48.14, 48.14, 0,
    NULL, NULL, NULL, 0, 1, 2503
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 504), N'01', N'01002409', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 2504
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 505), N'01', N'02000735', 1,
    45.89, 45.89, 45.89, 0, 45.89,
    45.89, 45.89, 45.89, 0,
    NULL, NULL, NULL, 0, 1, 2505
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 506), N'01', N'01000886', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 2506
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 507), N'01', N'05000012', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2507
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 508), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2508
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 509), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2509
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 510), N'01', N'01001037', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 2510
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 511), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2511
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 512), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2512
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 513), N'01', N'01000360', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 2513
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 514), N'01', N'01001330', 3,
    32.29, 32.29, 96.87, 0, 96.87,
    32.29, 96.87, 96.87, 0,
    NULL, NULL, NULL, 0, 1, 2514
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 515), N'01', N'01001711', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 2515
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 516), N'01', N'01001165', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2516
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 517), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2517
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 518), N'01', N'01001383', 2,
    28.28, 28.28, 56.56, 0, 56.56,
    28.28, 56.56, 56.56, 0,
    NULL, NULL, NULL, 0, 1, 2518
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 519), N'01', N'01001028', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2519
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 520), N'01', N'01001039', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2520
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 521), N'01', N'01002231', 1,
    38.49, 38.49, 38.49, 0, 38.49,
    38.49, 38.49, 38.49, 0,
    NULL, NULL, NULL, 0, 1, 2521
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 522), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2522
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 523), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 2523
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 524), N'01', N'05000002', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 2524
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 525), N'01', N'03000198', 1,
    79.99, 79.99, 79.99, 0, 79.99,
    79.99, 79.99, 79.99, 0,
    NULL, NULL, NULL, 0, 1, 2525
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 526), N'01', N'09000021', 1,
    72.99, 72.99, 72.99, 0, 72.99,
    72.99, 72.99, 72.99, 0,
    NULL, NULL, NULL, 0, 1, 2526
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 527), N'01', N'01001167', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 2527
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 528), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2528
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 529), N'01', N'01001383', 1,
    28.28, 28.28, 28.28, 0, 28.28,
    28.28, 28.28, 28.28, 0,
    NULL, NULL, NULL, 0, 1, 2529
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 530), N'01', N'07000002', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 2530
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 531), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2531
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 532), N'01', N'01001957', 3,
    33.99, 33.99, 101.97, 0, 101.97,
    33.99, 101.97, 101.97, 0,
    NULL, NULL, NULL, 0, 1, 2532
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 533), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2533
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 534), N'01', N'03000313', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 2534
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 535), N'01', N'01002603', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 2535
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 536), N'01', N'01002167', 3,
    39.99, 39.99, 119.97, 0, 119.97,
    39.99, 119.97, 119.97, 0,
    NULL, NULL, NULL, 0, 1, 2536
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 537), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2537
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 538), N'01', N'01001771', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2538
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 539), N'01', N'01001921', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2539
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 540), N'01', N'01000177', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 2540
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 541), N'01', N'12000002', 1,
    16.98, 16.98, 16.98, 0, 16.98,
    16.98, 16.98, 16.98, 0,
    NULL, NULL, NULL, 0, 1, 2541
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 542), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2542
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 543), N'01', N'01001564', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 2543
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
    NULL, NULL, NULL, 0, 1, 2544
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
    NULL, NULL, NULL, 0, 1, 2545
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 546), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2546
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 547), N'01', N'07000010', 1,
    29.62, 29.62, 29.62, 0, 29.62,
    29.62, 29.62, 29.62, 0,
    NULL, NULL, NULL, 0, 1, 2547
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 548), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2548
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 549), N'01', N'02000757', 1,
    93.14, 93.14, 93.14, 0, 93.14,
    93.14, 93.14, 93.14, 0,
    NULL, NULL, NULL, 0, 1, 2549
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 550), N'01', N'01000618', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2550
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 551), N'01', N'01002256', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 2551
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 552), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2552
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 553), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2553
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 554), N'01', N'01000219', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 2554
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 555), N'01', N'03000217', 1,
    72.99, 72.99, 72.99, 0, 72.99,
    72.99, 72.99, 72.99, 0,
    NULL, NULL, NULL, 0, 1, 2555
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 556), N'01', N'01000194', 2,
    37.99, 37.99, 75.98, 0, 75.98,
    37.99, 75.98, 75.98, 0,
    NULL, NULL, NULL, 0, 1, 2556
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 557), N'01', N'07000006', 1,
    36.8, 36.8, 36.8, 0, 36.8,
    36.8, 36.8, 36.8, 0,
    NULL, NULL, NULL, 0, 1, 2557
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 558), N'01', N'01002600', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 2558
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 559), N'01', N'05000011', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 2559
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 560), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2560
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 561), N'01', N'01001842', 2,
    31.67, 31.67, 63.34, 0, 63.34,
    31.67, 63.34, 63.34, 0,
    NULL, NULL, NULL, 0, 1, 2561
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 562), N'01', N'01001042', 2,
    16.24, 16.24, 32.48, 0, 32.48,
    16.24, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 2562
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 563), N'01', N'01000474', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2563
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 564), N'01', N'01000022', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2564
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 565), N'01', N'08000004', 3,
    18.99, 18.99, 56.97, 0, 56.97,
    18.99, 56.97, 56.97, 0,
    NULL, NULL, NULL, 0, 1, 2565
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 566), N'01', N'01001842', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2566
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 567), N'01', N'01002439', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 2567
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 568), N'01', N'14000003', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2568
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 569), N'01', N'01001091', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2569
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 570), N'01', N'01002205', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2570
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 571), N'01', N'01000439', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2571
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 572), N'01', N'01002300', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 2572
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 573), N'01', N'01002300', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 2573
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
    NULL, NULL, NULL, 0, 1, 2574
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 575), N'01', N'01002409', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 2575
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 576), N'01', N'01001842', 1,
    31.67, 31.67, 31.67, 0, 31.67,
    31.67, 31.67, 31.67, 0,
    NULL, NULL, NULL, 0, 1, 2576
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 577), N'01', N'05000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2577
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 578), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2578
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 579), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2579
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 580), N'01', N'01002429', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2580
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 581), N'01', N'03000130', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 2581
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 582), N'01', N'01001568', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2582
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 583), N'01', N'01000495', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2583
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 584), N'01', N'01000405', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2584
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 585), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2585
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 586), N'01', N'05000100', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2586
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 587), N'01', N'01001266', 1,
    32.48, 32.48, 32.48, 0, 32.48,
    32.48, 32.48, 32.48, 0,
    NULL, NULL, NULL, 0, 1, 2587
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 588), N'01', N'03000197', 1,
    58.98, 58.98, 58.98, 0, 58.98,
    58.98, 58.98, 58.98, 0,
    NULL, NULL, NULL, 0, 1, 2588
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 589), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2589
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 590), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2590
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 591), N'01', N'02000740', 1,
    48.14, 48.14, 48.14, 0, 48.14,
    48.14, 48.14, 48.14, 0,
    NULL, NULL, NULL, 0, 1, 2591
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 592), N'01', N'01000165', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2592
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 593), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 2593
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 594), N'01', N'01001789', 1,
    18.19, 18.19, 18.19, 0, 18.19,
    18.19, 18.19, 18.19, 0,
    NULL, NULL, NULL, 0, 1, 2594
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 595), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2595
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 596), N'01', N'01001383', 1,
    28.28, 28.28, 28.28, 0, 28.28,
    28.28, 28.28, 28.28, 0,
    NULL, NULL, NULL, 0, 1, 2596
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 597), N'01', N'01001574', 3,
    34.19, 34.19, 102.57, 0, 102.57,
    34.19, 102.57, 102.57, 0,
    NULL, NULL, NULL, 0, 1, 2597
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 598), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2598
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 599), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2599
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 600), N'01', N'05000112', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2600
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 601), N'01', N'01000150', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 2601
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 602), N'01', N'05000002', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 2602
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 603), N'01', N'01001039', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2603
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 604), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2604
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 605), N'01', N'01001800', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 2605
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 606), N'01', N'01001771', 1,
    22.94, 22.94, 22.94, 0, 22.94,
    22.94, 22.94, 22.94, 0,
    NULL, NULL, NULL, 0, 1, 2606
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 607), N'01', N'08000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2607
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 608), N'01', N'01000514', 2,
    25.99, 25.99, 51.98, 0, 51.98,
    25.99, 51.98, 51.98, 0,
    NULL, NULL, NULL, 0, 1, 2608
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 609), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2609
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 610), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2610
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 611), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2611
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 612), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2612
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 613), N'01', N'01001798', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 2613
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 614), N'01', N'03000117', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2614
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 615), N'01', N'01001590', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2615
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 616), N'01', N'01000586', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2616
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 617), N'01', N'03000156', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 2617
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 618), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2618
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 619), N'01', N'01001143', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2619
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 620), N'01', N'01001143', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2620
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 621), N'01', N'01000215', 1,
    31.26, 31.26, 31.26, 0, 31.26,
    31.26, 31.26, 31.26, 0,
    NULL, NULL, NULL, 0, 1, 2621
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 622), N'01', N'01000215', 1,
    31.26, 31.26, 31.26, 0, 31.26,
    31.26, 31.26, 31.26, 0,
    NULL, NULL, NULL, 0, 1, 2622
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 623), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2623
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 624), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2624
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 625), N'01', N'01000200', 1,
    35.84, 35.84, 35.84, 0, 35.84,
    35.84, 35.84, 35.84, 0,
    NULL, NULL, NULL, 0, 1, 2625
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 626), N'01', N'01000200', 1,
    35.84, 35.84, 35.84, 0, 35.84,
    35.84, 35.84, 35.84, 0,
    NULL, NULL, NULL, 0, 1, 2626
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 627), N'01', N'01000200', 1,
    35.84, 35.84, 35.84, 0, 35.84,
    35.84, 35.84, 35.84, 0,
    NULL, NULL, NULL, 0, 1, 2627
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 628), N'01', N'01000986', 1,
    20.89, 20.89, 20.89, 0, 20.89,
    20.89, 20.89, 20.89, 0,
    NULL, NULL, NULL, 0, 1, 2628
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 629), N'01', N'01000166', 1,
    39.81, 39.81, 39.81, 0, 39.81,
    39.81, 39.81, 39.81, 0,
    NULL, NULL, NULL, 0, 1, 2629
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 630), N'01', N'03000118', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2630
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 631), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2631
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 632), N'01', N'01002007', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 2632
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 633), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 2633
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 634), N'01', N'01001084', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2634
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 635), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2635
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 636), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2636
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 637), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2637
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 638), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2638
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 639), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2639
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 640), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2640
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 641), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2641
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 642), N'01', N'01002224', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2642
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 643), N'01', N'09000020', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2643
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 644), N'01', N'01001086', 1,
    28.99, 28.99, 28.99, 0, 28.99,
    28.99, 28.99, 28.99, 0,
    NULL, NULL, NULL, 0, 1, 2644
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 645), N'01', N'03000108', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2645
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 646), N'01', N'01000031', 1,
    45.59, 45.59, 45.59, 0, 45.59,
    45.59, 45.59, 45.59, 0,
    NULL, NULL, NULL, 0, 1, 2646
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 647), N'01', N'01001093', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2647
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 648), N'01', N'01001509', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 2648
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 649), N'01', N'07000005', 1,
    27.92, 27.92, 27.92, 0, 27.92,
    27.92, 27.92, 27.92, 0,
    NULL, NULL, NULL, 0, 1, 2649
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 650), N'01', N'03000117', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2650
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 651), N'01', N'01002868', 1,
    52.99, 52.99, 52.99, 0, 52.99,
    52.99, 52.99, 52.99, 0,
    NULL, NULL, NULL, 0, 1, 2651
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 652), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2652
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 653), N'01', N'05000010', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 2653
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 654), N'01', N'01001843', 2,
    33.74, 33.74, 67.48, 0, 67.48,
    33.74, 67.48, 67.48, 0,
    NULL, NULL, NULL, 0, 1, 2654
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 655), N'01', N'12000002', 1,
    19.98, 19.98, 19.98, 0, 19.98,
    19.98, 19.98, 19.98, 0,
    NULL, NULL, NULL, 0, 1, 2655
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 656), N'01', N'01000643', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2656
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 657), N'01', N'01000264', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2657
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 658), N'01', N'01000993', 2,
    16.27, 16.27, 32.54, 0, 32.54,
    16.27, 32.54, 32.54, 0,
    NULL, NULL, NULL, 0, 1, 2658
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 659), N'01', N'01001109', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 2659
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 660), N'01', N'01001289', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2660
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 661), N'01', N'03000059', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2661
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 662), N'01', N'01002215', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2662
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 663), N'01', N'01001381', 1,
    27.42, 27.42, 27.42, 0, 27.42,
    27.42, 27.42, 27.42, 0,
    NULL, NULL, NULL, 0, 1, 2663
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 664), N'01', N'03000196', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2664
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 665), N'01', N'05000007', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2665
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 666), N'01', N'01002185', 1,
    37.99, 37.99, 37.99, 0, 37.99,
    37.99, 37.99, 37.99, 0,
    NULL, NULL, NULL, 0, 1, 2666
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 667), N'01', N'01001996', 2,
    29.9, 29.9, 59.8, 0, 59.8,
    29.9, 59.8, 59.8, 0,
    NULL, NULL, NULL, 0, 1, 2667
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 668), N'01', N'01000589', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2668
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 669), N'01', N'01001399', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2669
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 670), N'01', N'01001399', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2670
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 671), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 2671
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 672), N'01', N'01001931', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2672
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 673), N'01', N'01000603', 2,
    34.99, 34.99, 69.98, 0, 69.98,
    34.99, 69.98, 69.98, 0,
    NULL, NULL, NULL, 0, 1, 2673
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 674), N'01', N'01001094', 4,
    25.99, 25.99, 103.96, 0, 103.96,
    25.99, 103.96, 103.96, 0,
    NULL, NULL, NULL, 0, 1, 2674
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 675), N'01', N'03000085', 1,
    24.79, 24.79, 24.79, 0, 24.79,
    24.79, 24.79, 24.79, 0,
    NULL, NULL, NULL, 0, 1, 2675
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 676), N'01', N'03000085', 3,
    24.790000000000003, 24.790000000000003, 74.37, 0, 74.37,
    24.790000000000003, 74.37, 74.37, 0,
    NULL, NULL, NULL, 0, 1, 2676
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 677), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2677
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 678), N'01', N'01001455', 3,
    29.99, 29.99, 89.97, 0, 89.97,
    29.99, 89.97, 89.97, 0,
    NULL, NULL, NULL, 0, 1, 2678
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
    NULL, NULL, NULL, 0, 1, 2679
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 680), N'01', N'01001500', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 2680
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 681), N'01', N'01001270', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2681
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 682), N'01', N'01001570', 1,
    32.29, 32.29, 32.29, 0, 32.29,
    32.29, 32.29, 32.29, 0,
    NULL, NULL, NULL, 0, 1, 2682
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 683), N'01', N'01000617', 1,
    29.69, 29.69, 29.69, 0, 29.69,
    29.69, 29.69, 29.69, 0,
    NULL, NULL, NULL, 0, 1, 2683
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 684), N'01', N'01002179', 2,
    39.99, 39.99, 79.98, 0, 79.98,
    39.99, 79.98, 79.98, 0,
    NULL, NULL, NULL, 0, 1, 2684
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 685), N'01', N'01000472', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 2685
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 686), N'01', N'01001855', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2686
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 687), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2687
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 688), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2688
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
    NULL, NULL, NULL, 0, 1, 2689
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 690), N'01', N'01001447', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2690
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 691), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2691
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 692), N'01', N'01001929', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2692
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 693), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2693
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 694), N'01', N'01000641', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2694
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 695), N'01', N'01000641', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2695
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 696), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2696
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 697), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2697
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 698), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2698
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 699), N'01', N'03000065', 1,
    109.99, 109.99, 109.99, 0, 109.99,
    109.99, 109.99, 109.99, 0,
    NULL, NULL, NULL, 0, 1, 2699
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 700), N'01', N'01000441', 3,
    43.99, 43.99, 131.97, 0, 131.97,
    43.99, 131.97, 131.97, 0,
    NULL, NULL, NULL, 0, 1, 2700
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 701), N'01', N'01000022', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2701
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 702), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2702
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 703), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2703
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 704), N'01', N'01001167', 1,
    29.77, 29.77, 29.77, 0, 29.77,
    29.77, 29.77, 29.77, 0,
    NULL, NULL, NULL, 0, 1, 2704
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 705), N'01', N'02000740', 1,
    48.14, 48.14, 48.14, 0, 48.14,
    48.14, 48.14, 48.14, 0,
    NULL, NULL, NULL, 0, 1, 2705
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 706), N'01', N'01001929', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2706
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 707), N'01', N'01001773', 1,
    19.37, 19.37, 19.37, 0, 19.37,
    19.37, 19.37, 19.37, 0,
    NULL, NULL, NULL, 0, 1, 2707
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 708), N'01', N'01002215', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2708
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 709), N'01', N'03000058', 1,
    20.65, 20.65, 20.65, 0, 20.65,
    20.65, 20.65, 20.65, 0,
    NULL, NULL, NULL, 0, 1, 2709
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 710), N'01', N'01002409', 1,
    40.84, 40.84, 40.84, 0, 40.84,
    40.84, 40.84, 40.84, 0,
    NULL, NULL, NULL, 0, 1, 2710
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 711), N'01', N'10000003', 1,
    28.98, 28.98, 28.98, 0, 28.98,
    28.98, 28.98, 28.98, 0,
    NULL, NULL, NULL, 0, 1, 2711
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 712), N'01', N'01001510', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 2712
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 713), N'01', N'01000878', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2713
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 714), N'01', N'01000878', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2714
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 715), N'01', N'01001234', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 2715
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 716), N'01', N'01001405', 1,
    18.69, 18.69, 18.69, 0, 18.69,
    18.69, 18.69, 18.69, 0,
    NULL, NULL, NULL, 0, 1, 2716
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 717), N'01', N'01000437', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2717
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 718), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2718
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 719), N'01', N'01001080', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2719
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 720), N'01', N'01001878', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2720
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 721), N'01', N'05000006', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 2721
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 722), N'01', N'01001842', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2722
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 723), N'01', N'05000041', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2723
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 724), N'01', N'01000588', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2724
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 725), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2725
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 726), N'01', N'05000006', 3,
    22.99, 22.99, 68.97, 0, 68.97,
    22.99, 68.97, 68.97, 0,
    NULL, NULL, NULL, 0, 1, 2726
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 727), N'01', N'01000495', 1,
    41.99, 41.99, 41.99, 0, 41.99,
    41.99, 41.99, 41.99, 0,
    NULL, NULL, NULL, 0, 1, 2727
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 728), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2728
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 729), N'01', N'01001095', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2729
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 730), N'01', N'08000004', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 2730
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 731), N'01', N'01001801', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 2731
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 732), N'01', N'01000023', 1,
    37.04, 37.04, 37.04, 0, 37.04,
    37.04, 37.04, 37.04, 0,
    NULL, NULL, NULL, 0, 1, 2732
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 733), N'01', N'05000102', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2733
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 734), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2734
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 735), N'01', N'01001191', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 2735
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 736), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2736
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
    NULL, NULL, NULL, 0, 1, 2737
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 738), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2738
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 739), N'01', N'05000002', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2739
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 740), N'01', N'01000515', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 2740
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 741), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2741
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 742), N'01', N'01000438', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2742
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 743), N'01', N'01000605', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2743
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 744), N'01', N'01000441', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 2744
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 745), N'01', N'01001800', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 2745
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 746), N'01', N'01001050', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2746
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 747), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2747
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 748), N'01', N'01002222', 1,
    30.09, 30.09, 30.09, 0, 30.09,
    30.09, 30.09, 30.09, 0,
    NULL, NULL, NULL, 0, 1, 2748
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 749), N'01', N'01001305', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2749
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 750), N'01', N'01000104', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2750
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 751), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2751
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 752), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2752
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
    NULL, NULL, NULL, 0, 1, 2753
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 754), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2754
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 755), N'01', N'05000014', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2755
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 756), N'01', N'05000014', 4,
    22.99, 22.99, 91.96, 0, 91.96,
    22.99, 91.96, 91.96, 0,
    NULL, NULL, NULL, 0, 1, 2756
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 757), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2757
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 758), N'01', N'08000011', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2758
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 759), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2759
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 760), N'01', N'01001405', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2760
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 761), N'01', N'01001226', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 2761
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 762), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2762
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 763), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2763
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 764), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2764
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 765), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2765
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 766), N'01', N'02000773', 1,
    119.24, 119.24, 119.24, 0, 119.24,
    119.24, 119.24, 119.24, 0,
    NULL, NULL, NULL, 0, 1, 2766
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 767), N'01', N'01001189', 2,
    30.39, 30.39, 60.78, 0, 60.78,
    30.39, 60.78, 60.78, 0,
    NULL, NULL, NULL, 0, 1, 2767
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 768), N'01', N'01000602', 1,
    28.04, 28.04, 28.04, 0, 28.04,
    28.04, 28.04, 28.04, 0,
    NULL, NULL, NULL, 0, 1, 2768
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 769), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2769
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 770), N'01', N'01002011', 1,
    33.29, 33.29, 33.29, 0, 33.29,
    33.29, 33.29, 33.29, 0,
    NULL, NULL, NULL, 0, 1, 2770
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 771), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2771
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 772), N'01', N'02000784', 1,
    135.89, 135.89, 135.89, 0, 135.89,
    135.89, 135.89, 135.89, 0,
    NULL, NULL, NULL, 0, 1, 2772
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 773), N'01', N'01001365', 4,
    21.99, 21.99, 87.96, 0, 87.96,
    21.99, 87.96, 87.96, 0,
    NULL, NULL, NULL, 0, 1, 2773
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 774), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2774
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 775), N'01', N'01002136', 5,
    31.99, 31.99, 159.95, 0, 159.95,
    31.99, 159.95, 159.95, 0,
    NULL, NULL, NULL, 0, 1, 2775
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 776), N'01', N'05000112', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2776
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 777), N'01', N'01001381', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2777
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 778), N'01', N'01001611', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2778
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 779), N'01', N'01001611', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2779
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 780), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2780
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 781), N'01', N'03000160', 1,
    115.99, 115.99, 115.99, 0, 115.99,
    115.99, 115.99, 115.99, 0,
    NULL, NULL, NULL, 0, 1, 2781
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 782), N'01', N'05000006', 1,
    19.54, 19.54, 19.54, 0, 19.54,
    19.54, 19.54, 19.54, 0,
    NULL, NULL, NULL, 0, 1, 2782
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 783), N'01', N'01001500', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 2783
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 784), N'01', N'05000006', 3,
    19.54, 19.54, 58.62, 0, 58.62,
    19.54, 58.62, 58.62, 0,
    NULL, NULL, NULL, 0, 1, 2784
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 785), N'01', N'01002241', 1,
    38.99, 38.99, 38.99, 0, 38.99,
    38.99, 38.99, 38.99, 0,
    NULL, NULL, NULL, 0, 1, 2785
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 786), N'01', N'01001307', 1,
    25.07, 25.07, 25.07, 0, 25.07,
    25.07, 25.07, 25.07, 0,
    NULL, NULL, NULL, 0, 1, 2786
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 787), N'01', N'01000472', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 2787
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 788), N'01', N'01000472', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 2788
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 789), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2789
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 790), N'01', N'01000458', 1,
    48.99, 48.99, 48.99, 0, 48.99,
    48.99, 48.99, 48.99, 0,
    NULL, NULL, NULL, 0, 1, 2790
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 791), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2791
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 792), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2792
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 793), N'01', N'03000307', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2793
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 794), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2794
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 795), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2795
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 796), N'01', N'07000006', 1,
    36.8, 36.8, 36.8, 0, 36.8,
    36.8, 36.8, 36.8, 0,
    NULL, NULL, NULL, 0, 1, 2796
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 797), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2797
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 798), N'01', N'01002343', 1,
    55.09, 55.09, 55.09, 0, 55.09,
    55.09, 55.09, 55.09, 0,
    NULL, NULL, NULL, 0, 1, 2798
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 799), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2799
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 800), N'01', N'05000011', 2,
    22.99, 22.99, 45.98, 0, 45.98,
    22.99, 45.98, 45.98, 0,
    NULL, NULL, NULL, 0, 1, 2800
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 801), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2801
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 802), N'01', N'01002242', 3,
    40.99, 40.99, 122.97, 0, 122.97,
    40.99, 122.97, 122.97, 0,
    NULL, NULL, NULL, 0, 1, 2802
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 803), N'01', N'01001855', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2803
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 804), N'01', N'01001028', 2,
    25.64, 25.64, 51.28, 0, 51.28,
    25.64, 51.28, 51.28, 0,
    NULL, NULL, NULL, 0, 1, 2804
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 805), N'01', N'01001685', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2805
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 806), N'01', N'01001685', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2806
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 807), N'01', N'01001497', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2807
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 808), N'01', N'01002257', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 2808
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 809), N'01', N'01002257', 1,
    40.99, 40.99, 40.99, 0, 40.99,
    40.99, 40.99, 40.99, 0,
    NULL, NULL, NULL, 0, 1, 2809
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 810), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 2810
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 811), N'01', N'05000014', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2811
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 812), N'01', N'02000734', 1,
    45.44, 45.44, 45.44, 0, 45.44,
    45.44, 45.44, 45.44, 0,
    NULL, NULL, NULL, 0, 1, 2812
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 813), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2813
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 814), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2814
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 815), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2815
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 816), N'01', N'05000005', 1,
    18.89, 18.89, 18.89, 0, 18.89,
    18.89, 18.89, 18.89, 0,
    NULL, NULL, NULL, 0, 1, 2816
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 817), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2817
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 818), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2818
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 819), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 2819
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 820), N'01', N'01001089', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 2820
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 821), N'01', N'01001089', 1,
    28.49, 28.49, 28.49, 0, 28.49,
    28.49, 28.49, 28.49, 0,
    NULL, NULL, NULL, 0, 1, 2821
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 822), N'01', N'01000230', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2822
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 823), N'01', N'01001097', 2,
    31.99, 31.99, 63.98, 0, 63.98,
    31.99, 63.98, 63.98, 0,
    NULL, NULL, NULL, 0, 1, 2823
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 824), N'01', N'01000603', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 2824
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 825), N'01', N'01001202', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2825
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 826), N'01', N'01001800', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 2826
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 827), N'01', N'01001800', 2,
    33.24, 33.24, 66.48, 0, 66.48,
    33.24, 66.48, 66.48, 0,
    NULL, NULL, NULL, 0, 1, 2827
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 828), N'01', N'01001707', 1,
    27.06, 27.06, 27.06, 0, 27.06,
    27.06, 27.06, 27.06, 0,
    NULL, NULL, NULL, 0, 1, 2828
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 829), N'01', N'01001318', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2829
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 830), N'01', N'01001318', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2830
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 831), N'01', N'01001382', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2831
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 832), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2832
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 833), N'01', N'01001234', 1,
    29.74, 29.74, 29.74, 0, 29.74,
    29.74, 29.74, 29.74, 0,
    NULL, NULL, NULL, 0, 1, 2833
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 834), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2834
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 835), N'01', N'01001048', 1,
    23.74, 23.74, 23.74, 0, 23.74,
    23.74, 23.74, 23.74, 0,
    NULL, NULL, NULL, 0, 1, 2835
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 836), N'01', N'01000386', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2836
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 837), N'01', N'03000183', 1,
    17.99, 17.99, 17.99, 0, 17.99,
    17.99, 17.99, 17.99, 0,
    NULL, NULL, NULL, 0, 1, 2837
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 838), N'01', N'01000193', 1,
    28.79, 28.79, 28.79, 0, 28.79,
    28.79, 28.79, 28.79, 0,
    NULL, NULL, NULL, 0, 1, 2838
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 839), N'01', N'14000005', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2839
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 840), N'01', N'01001455', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2840
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 841), N'01', N'01001384', 1,
    25.98, 25.98, 25.98, 0, 25.98,
    25.98, 25.98, 25.98, 0,
    NULL, NULL, NULL, 0, 1, 2841
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 842), N'01', N'01001384', 1,
    25.98, 25.98, 25.98, 0, 25.98,
    25.98, 25.98, 25.98, 0,
    NULL, NULL, NULL, 0, 1, 2842
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 843), N'01', N'01001338', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2843
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 844), N'01', N'01000472', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2844
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 845), N'01', N'01001325', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2845
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
    NULL, NULL, NULL, 0, 1, 2846
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 847), N'01', N'08000004', 2,
    18.99, 18.99, 37.98, 0, 37.98,
    18.99, 37.98, 37.98, 0,
    NULL, NULL, NULL, 0, 1, 2847
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 848), N'01', N'01000514', 1,
    25.99, 25.99, 25.99, 0, 25.99,
    25.99, 25.99, 25.99, 0,
    NULL, NULL, NULL, 0, 1, 2848
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
    NULL, NULL, NULL, 0, 1, 2849
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 850), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2850
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 851), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2851
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 852), N'01', N'01001053', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2852
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 853), N'01', N'01001053', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2853
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 854), N'01', N'12000008', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2854
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 855), N'01', N'03000082', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2855
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
    NULL, NULL, NULL, 0, 1, 2856
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 857), N'01', N'01000288', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 2857
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 858), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2858
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 859), N'01', N'03000126', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 2859
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
    NULL, NULL, NULL, 0, 1, 2860
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 861), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2861
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 862), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2862
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 863), N'01', N'01000360', 2,
    37.99, 37.99, 75.98, 0, 75.98,
    37.99, 75.98, 75.98, 0,
    NULL, NULL, NULL, 0, 1, 2863
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 864), N'01', N'01001510', 2,
    36.09, 36.09, 72.18, 0, 72.18,
    36.09, 72.18, 72.18, 0,
    NULL, NULL, NULL, 0, 1, 2864
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 865), N'01', N'05000073', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2865
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 866), N'01', N'01001234', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2866
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 867), N'01', N'01001609', 2,
    24.69, 24.69, 49.38, 0, 49.38,
    24.69, 49.38, 49.38, 0,
    NULL, NULL, NULL, 0, 1, 2867
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 868), N'01', N'01001689', 4,
    33.24, 33.24, 132.96, 0, 132.96,
    33.24, 132.96, 132.96, 0,
    NULL, NULL, NULL, 0, 1, 2868
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
    NULL, NULL, NULL, 0, 1, 2869
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 870), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2870
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 871), N'01', N'05000074', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2871
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 872), N'01', N'01001607', 1,
    28.25, 28.25, 28.25, 0, 28.25,
    28.25, 28.25, 28.25, 0,
    NULL, NULL, NULL, 0, 1, 2872
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 873), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2873
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 874), N'01', N'01000436', 1,
    32.99, 32.99, 32.99, 0, 32.99,
    32.99, 32.99, 32.99, 0,
    NULL, NULL, NULL, 0, 1, 2874
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 875), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2875
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
    NULL, NULL, NULL, 0, 1, 2876
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 877), N'01', N'01001955', 1,
    31.44, 31.44, 31.44, 0, 31.44,
    31.44, 31.44, 31.44, 0,
    NULL, NULL, NULL, 0, 1, 2877
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 878), N'01', N'01001190', 1,
    31.34, 31.34, 31.34, 0, 31.34,
    31.34, 31.34, 31.34, 0,
    NULL, NULL, NULL, 0, 1, 2878
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 879), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2879
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 880), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2880
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 881), N'01', N'01000833', 1,
    33.11, 33.11, 33.11, 0, 33.11,
    33.11, 33.11, 33.11, 0,
    NULL, NULL, NULL, 0, 1, 2881
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 882), N'01', N'03000082', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2882
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 883), N'01', N'01002008', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2883
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 884), N'01', N'01000457', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2884
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 885), N'01', N'01000456', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2885
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 886), N'01', N'01001186', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2886
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 887), N'01', N'01000455', 2,
    41.99, 41.99, 83.98, 0, 83.98,
    41.99, 83.98, 83.98, 0,
    NULL, NULL, NULL, 0, 1, 2887
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 888), N'01', N'01001339', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2888
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 889), N'01', N'01001189', 1,
    30.39, 30.39, 30.39, 0, 30.39,
    30.39, 30.39, 30.39, 0,
    NULL, NULL, NULL, 0, 1, 2889
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 890), N'01', N'03000104', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2890
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 891), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2891
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 892), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2892
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 893), N'01', N'01001312', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2893
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 894), N'01', N'01001312', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2894
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 895), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2895
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 896), N'01', N'05000011', 2,
    19.59, 19.59, 39.18, 0, 39.18,
    19.59, 39.18, 39.18, 0,
    NULL, NULL, NULL, 0, 1, 2896
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 897), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2897
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 898), N'01', N'01000150', 1,
    47.99, 47.99, 47.99, 0, 47.99,
    47.99, 47.99, 47.99, 0,
    NULL, NULL, NULL, 0, 1, 2898
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 899), N'01', N'03000215', 1,
    39.99, 39.99, 39.99, 0, 39.99,
    39.99, 39.99, 39.99, 0,
    NULL, NULL, NULL, 0, 1, 2899
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 900), N'01', N'09000024', 1,
    60.79, 60.79, 60.79, 0, 60.79,
    60.79, 60.79, 60.79, 0,
    NULL, NULL, NULL, 0, 1, 2900
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 901), N'01', N'01001800', 2,
    32.99, 32.99, 65.98, 0, 65.98,
    32.99, 65.98, 65.98, 0,
    NULL, NULL, NULL, 0, 1, 2901
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 902), N'01', N'01001865', 1,
    31.49, 31.49, 31.49, 0, 31.49,
    31.49, 31.49, 31.49, 0,
    NULL, NULL, NULL, 0, 1, 2902
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 903), N'01', N'01002258', 1,
    42.99, 42.99, 42.99, 0, 42.99,
    42.99, 42.99, 42.99, 0,
    NULL, NULL, NULL, 0, 1, 2903
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 904), N'01', N'01000289', 1,
    44.64, 44.64, 44.64, 0, 44.64,
    44.64, 44.64, 44.64, 0,
    NULL, NULL, NULL, 0, 1, 2904
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 905), N'01', N'01001053', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2905
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 906), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2906
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 907), N'01', N'01000541', 1,
    44.99, 44.99, 44.99, 0, 44.99,
    44.99, 44.99, 44.99, 0,
    NULL, NULL, NULL, 0, 1, 2907
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 908), N'01', N'02000740', 1,
    48.14, 48.14, 48.14, 0, 48.14,
    48.14, 48.14, 48.14, 0,
    NULL, NULL, NULL, 0, 1, 2908
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 909), N'01', N'03000086', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2909
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 910), N'01', N'05000104', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2910
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 911), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2911
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 912), N'01', N'01001313', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2912
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 913), N'01', N'01001422', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2913
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 914), N'01', N'01001088', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2914
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 915), N'01', N'01001381', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2915
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 916), N'01', N'01001000', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2916
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 917), N'01', N'01001564', 1,
    27.99, 27.99, 27.99, 0, 27.99,
    27.99, 27.99, 27.99, 0,
    NULL, NULL, NULL, 0, 1, 2917
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 918), N'01', N'01001043', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2918
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 919), N'01', N'01001957', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2919
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 920), N'01', N'03000058', 1,
    20.65, 20.65, 20.65, 0, 20.65,
    20.65, 20.65, 20.65, 0,
    NULL, NULL, NULL, 0, 1, 2920
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 921), N'01', N'05000074', 2,
    24.99, 24.99, 49.98, 0, 49.98,
    24.99, 49.98, 49.98, 0,
    NULL, NULL, NULL, 0, 1, 2921
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 922), N'01', N'01000300', 3,
    34.99, 34.99, 104.97, 0, 104.97,
    34.99, 104.97, 104.97, 0,
    NULL, NULL, NULL, 0, 1, 2922
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 923), N'01', N'01000761', 2,
    59.99, 59.99, 119.98, 0, 119.98,
    59.99, 119.98, 119.98, 0,
    NULL, NULL, NULL, 0, 1, 2923
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 924), N'01', N'05000106', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2924
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 925), N'01', N'01001785', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2925
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 926), N'01', N'05000075', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2926
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 927), N'01', N'05000010', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2927
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 928), N'01', N'01001190', 3,
    31.34, 31.34, 94.02, 0, 94.02,
    31.34, 94.02, 94.02, 0,
    NULL, NULL, NULL, 0, 1, 2928
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 929), N'01', N'05000035', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2929
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 930), N'01', N'01001609', 1,
    24.69, 24.69, 24.69, 0, 24.69,
    24.69, 24.69, 24.69, 0,
    NULL, NULL, NULL, 0, 1, 2930
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 931), N'01', N'01001609', 4,
    24.69, 24.69, 98.76, 0, 98.76,
    24.69, 98.76, 98.76, 0,
    NULL, NULL, NULL, 0, 1, 2931
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 932), N'01', N'05000003', 1,
    21.99, 21.99, 21.99, 0, 21.99,
    21.99, 21.99, 21.99, 0,
    NULL, NULL, NULL, 0, 1, 2932
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 933), N'01', N'05000082', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 2933
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 934), N'01', N'03000127', 1,
    19.99, 19.99, 19.99, 0, 19.99,
    19.99, 19.99, 19.99, 0,
    NULL, NULL, NULL, 0, 1, 2934
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 935), N'01', N'01001843', 1,
    33.74, 33.74, 33.74, 0, 33.74,
    33.74, 33.74, 33.74, 0,
    NULL, NULL, NULL, 0, 1, 2935
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 936), N'01', N'05000011', 5,
    18.39, 18.39, 91.95, 0, 91.95,
    18.39, 91.95, 91.95, 0,
    NULL, NULL, NULL, 0, 1, 2936
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 937), N'01', N'05000011', 3,
    18.39, 18.39, 55.17, 0, 55.17,
    18.39, 55.17, 55.17, 0,
    NULL, NULL, NULL, 0, 1, 2937
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 938), N'01', N'01001313', 1,
    25.64, 25.64, 25.64, 0, 25.64,
    25.64, 25.64, 25.64, 0,
    NULL, NULL, NULL, 0, 1, 2938
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 939), N'01', N'05000011', 3,
    18.39, 18.39, 55.17, 0, 55.17,
    18.39, 55.17, 55.17, 0,
    NULL, NULL, NULL, 0, 1, 2939
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 940), N'01', N'05000011', 4,
    18.39, 18.39, 73.56, 0, 73.56,
    18.39, 73.56, 73.56, 0,
    NULL, NULL, NULL, 0, 1, 2940
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 941), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 2941
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 942), N'01', N'05000006', 3,
    22.99, 22.99, 68.97, 0, 68.97,
    22.99, 68.97, 68.97, 0,
    NULL, NULL, NULL, 0, 1, 2942
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 943), N'01', N'03000130', 2,
    15.99, 15.99, 31.98, 0, 31.98,
    15.99, 31.98, 31.98, 0,
    NULL, NULL, NULL, 0, 1, 2943
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 944), N'01', N'01001459', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2944
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 945), N'01', N'01002011', 2,
    33.29, 33.29, 66.58, 0, 66.58,
    33.29, 66.58, 66.58, 0,
    NULL, NULL, NULL, 0, 1, 2945
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 946), N'01', N'05000079', 2,
    26.99, 26.99, 53.98, 0, 53.98,
    26.99, 53.98, 53.98, 0,
    NULL, NULL, NULL, 0, 1, 2946
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 947), N'01', N'01000222', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2947
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 948), N'01', N'03000197', 1,
    58.98, 58.98, 58.98, 0, 58.98,
    58.98, 58.98, 58.98, 0,
    NULL, NULL, NULL, 0, 1, 2948
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 949), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2949
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 950), N'01', N'08000006', 1,
    36.09, 36.09, 36.09, 0, 36.09,
    36.09, 36.09, 36.09, 0,
    NULL, NULL, NULL, 0, 1, 2950
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 951), N'01', N'01000527', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2951
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 952), N'01', N'03000104', 2,
    29.99, 29.99, 59.98, 0, 59.98,
    29.99, 59.98, 59.98, 0,
    NULL, NULL, NULL, 0, 1, 2952
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 953), N'01', N'01000619', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2953
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 954), N'01', N'01000477', 1,
    43.99, 43.99, 43.99, 0, 43.99,
    43.99, 43.99, 43.99, 0,
    NULL, NULL, NULL, 0, 1, 2954
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 955), N'01', N'03000191', 1,
    52.99, 52.99, 52.99, 0, 52.99,
    52.99, 52.99, 52.99, 0,
    NULL, NULL, NULL, 0, 1, 2955
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 956), N'01', N'01001116', 2,
    28.28, 28.28, 56.56, 0, 56.56,
    28.28, 56.56, 56.56, 0,
    NULL, NULL, NULL, 0, 1, 2956
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 957), N'01', N'01001318', 1,
    26.16, 26.16, 26.16, 0, 26.16,
    26.16, 26.16, 26.16, 0,
    NULL, NULL, NULL, 0, 1, 2957
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 958), N'01', N'01000615', 1,
    46.99, 46.99, 46.99, 0, 46.99,
    46.99, 46.99, 46.99, 0,
    NULL, NULL, NULL, 0, 1, 2958
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 959), N'01', N'14000006', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2959
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 960), N'01', N'01001424', 1,
    31.99, 31.99, 31.99, 0, 31.99,
    31.99, 31.99, 31.99, 0,
    NULL, NULL, NULL, 0, 1, 2960
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 961), N'01', N'01001291', 1,
    28.87, 28.87, 28.87, 0, 28.87,
    28.87, 28.87, 28.87, 0,
    NULL, NULL, NULL, 0, 1, 2961
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 962), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2962
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 963), N'01', N'01000890', 2,
    49.99, 49.99, 99.98, 0, 99.98,
    49.99, 99.98, 99.98, 0,
    NULL, NULL, NULL, 0, 1, 2963
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 964), N'01', N'03000082', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2964
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 965), N'01', N'01000516', 2,
    36.99, 36.99, 73.98, 0, 73.98,
    36.99, 73.98, 73.98, 0,
    NULL, NULL, NULL, 0, 1, 2965
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 966), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2966
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 967), N'01', N'05000004', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 2967
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 968), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2968
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 969), N'01', N'01000361', 1,
    42.74, 42.74, 42.74, 0, 42.74,
    42.74, 42.74, 42.74, 0,
    NULL, NULL, NULL, 0, 1, 2969
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 970), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2970
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 971), N'01', N'01001878', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2971
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 972), N'01', N'01001878', 1,
    29.99, 29.99, 29.99, 0, 29.99,
    29.99, 29.99, 29.99, 0,
    NULL, NULL, NULL, 0, 1, 2972
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 973), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2973
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 974), N'01', N'01001765', 1,
    26.59, 26.59, 26.59, 0, 26.59,
    26.59, 26.59, 26.59, 0,
    NULL, NULL, NULL, 0, 1, 2974
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 975), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2975
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 976), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2976
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 977), N'01', N'01000022', 1,
    35.99, 35.99, 35.99, 0, 35.99,
    35.99, 35.99, 35.99, 0,
    NULL, NULL, NULL, 0, 1, 2977
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 978), N'01', N'03000124', 1,
    49.99, 49.99, 49.99, 0, 49.99,
    49.99, 49.99, 49.99, 0,
    NULL, NULL, NULL, 0, 1, 2978
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 979), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2979
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 980), N'01', N'01001042', 1,
    16.24, 16.24, 16.24, 0, 16.24,
    16.24, 16.24, 16.24, 0,
    NULL, NULL, NULL, 0, 1, 2980
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 981), N'01', N'01000409', 2,
    46.99, 46.99, 93.98, 0, 93.98,
    46.99, 93.98, 93.98, 0,
    NULL, NULL, NULL, 0, 1, 2981
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 982), N'01', N'08000004', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2982
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 983), N'01', N'01000516', 1,
    36.99, 36.99, 36.99, 0, 36.99,
    36.99, 36.99, 36.99, 0,
    NULL, NULL, NULL, 0, 1, 2983
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 984), N'01', N'05000006', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2984
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 985), N'01', N'01000020', 1,
    33.99, 33.99, 33.99, 0, 33.99,
    33.99, 33.99, 33.99, 0,
    NULL, NULL, NULL, 0, 1, 2985
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 986), N'01', N'01000331', 1,
    34.19, 34.19, 34.19, 0, 34.19,
    34.19, 34.19, 34.19, 0,
    NULL, NULL, NULL, 0, 1, 2986
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 987), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 2987
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 988), N'01', N'05000011', 1,
    18.39, 18.39, 18.39, 0, 18.39,
    18.39, 18.39, 18.39, 0,
    NULL, NULL, NULL, 0, 1, 2988
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 989), N'01', N'03000055', 1,
    14.99, 14.99, 14.99, 0, 14.99,
    14.99, 14.99, 14.99, 0,
    NULL, NULL, NULL, 0, 1, 2989
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 990), N'01', N'03000130', 1,
    15.99, 15.99, 15.99, 0, 15.99,
    15.99, 15.99, 15.99, 0,
    NULL, NULL, NULL, 0, 1, 2990
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 991), N'01', N'05000011', 1,
    22.99, 22.99, 22.99, 0, 22.99,
    22.99, 22.99, 22.99, 0,
    NULL, NULL, NULL, 0, 1, 2991
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 992), N'01', N'03000058', 1,
    22.94, 22.94, 22.94, 0, 22.94,
    22.94, 22.94, 22.94, 0,
    NULL, NULL, NULL, 0, 1, 2992
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 993), N'01', N'07000001', 1,
    27.98, 27.98, 27.98, 0, 27.98,
    27.98, 27.98, 27.98, 0,
    NULL, NULL, NULL, 0, 1, 2993
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 994), N'01', N'01000286', 1,
    34.99, 34.99, 34.99, 0, 34.99,
    34.99, 34.99, 34.99, 0,
    NULL, NULL, NULL, 0, 1, 2994
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 995), N'01', N'01001053', 1,
    26.99, 26.99, 26.99, 0, 26.99,
    26.99, 26.99, 26.99, 0,
    NULL, NULL, NULL, 0, 1, 2995
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 996), N'01', N'01001221', 1,
    21.65, 21.65, 21.65, 0, 21.65,
    21.65, 21.65, 21.65, 0,
    NULL, NULL, NULL, 0, 1, 2996
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 997), N'01', N'08000009', 1,
    18.99, 18.99, 18.99, 0, 18.99,
    18.99, 18.99, 18.99, 0,
    NULL, NULL, NULL, 0, 1, 2997
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 998), N'01', N'01001800', 1,
    33.24, 33.24, 33.24, 0, 33.24,
    33.24, 33.24, 33.24, 0,
    NULL, NULL, NULL, 0, 1, 2998
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 999), N'01', N'05000011', 1,
    19.59, 19.59, 19.59, 0, 19.59,
    19.59, 19.59, 19.59, 0,
    NULL, NULL, NULL, 0, 1, 2999
);
INSERT INTO [DispatchLists] (
    [DLID], [iDLsID], [cWhCode], [cInvCode], [iQuantity],
    [iUnitPrice], [iTaxUnitPrice], [iMoney], [iTax], [iSum],
    [iNatUnitPrice], [iNatMoney], [iNatSum], [iTaxRate],
    [cMemo], [cDefine22], [cDefine23], [bSettleAll], [bcosting], [irowno]
) VALUES (
    @DLID, (@iDLsID + 0 + 1000), N'01', N'01001867', 1,
    24.99, 24.99, 24.99, 0, 24.99,
    24.99, 24.99, 24.99, 0,
    NULL, NULL, NULL, 0, 1, 3000
);

    COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        RAISERROR(@ErrorMessage, 16, 1);
    END CATCH;
END;