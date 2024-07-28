 BEGIN
4 CREATE DATABASE [KoreAssignment_{Xavier_Toledo}]
5 END;
6 GO
7
8 USE [KoreAssignment_{Xavier_Toledo}]
9 GO
10
11 -- Check and create stg schema if it does not exist
12 IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'stg')
13 BEGIN
14 EXEC('CREATE SCHEMA stg');
15 END
16 GO
17
18 -- Check and create prod schema if it does not exist
19 IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'prod')
20 BEGIN
21 EXEC('CREATE SCHEMA prod');
22 END
23 GO
24
25 -- Check and create stg.Users table if it does not exist
26 IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'stg.Users') AND type in (N'U'))
27 BEGIN
28 CREATE TABLE stg.Users (
29 StgID INT IDENTITY(1,1) PRIMARY KEY,
30 UserID INT,
31 FullName NVARCHAR(255),
32 Age INT,
33 Email NVARCHAR(255),
34 RegistrationDate DATE,
35 LastLoginDate DATE,
36 PurchaseTotal FLOAT
37 );
38 END
39 GO
40
41 -- Check and create prod.Users table if it does not exist
42 IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'prod.Users') AND type in (N'U'))
43 BEGIN
44 CREATE TABLE prod.Users (
45 ID INT IDENTITY(1,1) PRIMARY KEY,
46 UserID INT,
47 FullName NVARCHAR(255),
48 Age INT,
49 Email NVARCHAR(255),
50 RegistrationDate DATE,
51 LastLoginDate DATE,
52 PurchaseTotal FLOAT,
53 RecordLastUpdated DATETIME DEFAULT GETDATE()
54 );
55 END
56 GO