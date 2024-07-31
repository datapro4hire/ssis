--IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'KoreAssignment_Xavier_Toledo')

--BEGIN
--	CREATE DATABASE [KoreAssignment_Xavier_Toledo];
--END
--GO

USE [KoreAssignment_Xavier_Toledo];
GO

---- Check and create stg schema if it does not exist
--IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'stg')
--BEGIN
--	EXEC('CREATE SCHEMA stg');
--END
--GO

-- Check and create prod schema if it does not exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'prod2')
BEGIN
	EXEC('CREATE SCHEMA prod2');
END
GO

---- Check and create stg.Users table if it does not exist
--IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'stg.Users') AND type in (N'U'))
--BEGIN
--	CREATE TABLE stg.Users (
--		StgID INT IDENTITY(1,1) PRIMARY KEY,
--		UserID INT,
--		FullName NVARCHAR(255),
--		Age INT,
--		Email NVARCHAR(255),
--		RegistrationDate DATE,
--		LastLoginDate DATE,
--		PurchaseTotal FLOAT
--	);
--END
--GO

-- Check and create prod.Users2 table if it does not exist
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'prod2.Users2') AND type in (N'U'))
BEGIN
	CREATE TABLE prod2.Users2 (
		ID INT IDENTITY(1,1) PRIMARY KEY,
		UserID INT,
		FullName NVARCHAR(255),
		Age INT,
		Email NVARCHAR(255),
		RegistrationDate DATE,
		LastLoginDate DATE,
		PurchaseTotal FLOAT,
		RecordLastUpdated DATETIME DEFAULT GETDATE()
	);
END
GO
