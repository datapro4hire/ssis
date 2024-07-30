BEGIN
    DECLARE @DatabaseName NVARCHAR(255) = 'KoreAssignment_' + QUOTENAME('Xavier_Toledo');
    EXEC('CREATE DATABASE ' + @DatabaseName);
END;
GO

USE @DatabaseName
GO

IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = N'stg')
BEGIN
    EXEC('CREATE SCHEMA stg');
END
GO

-- ... (similar checks and creation for 'prod' schema and tables)

CREATE TABLE stg.Users (
    StgID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT,
    FullName NVARCHAR(255),
    Age INT,
    Email NVARCHAR(255),
    RegistrationDate DATE,
    LastLoginDate DATE,
    PurchaseTotal DECIMAL(19, 4) -- Using DECIMAL
);
GO

-- ... (prod.Users table with DECIMAL)
