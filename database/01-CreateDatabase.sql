/*
 * Reporting Data Mart ETL
 * Project #80 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSIS
 * Created: 2014
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'DataMartETL')
BEGIN
    ALTER DATABASE DataMartETL SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataMartETL;
END
GO

CREATE DATABASE DataMartETL
ON PRIMARY
(
    NAME = 'DataMartETL_Data',
    FILENAME = 'C:\SQLData\DataMartETL_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'DataMartETL_Log',
    FILENAME = 'C:\SQLData\DataMartETL_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE DataMartETL SET RECOVERY SIMPLE;
ALTER DATABASE DataMartETL SET AUTO_UPDATE_STATISTICS ON;
GO

USE DataMartETL;
GO

PRINT 'Database DataMartETL created successfully';
PRINT 'Project: Reporting Data Mart ETL';
PRINT 'Description: Curated reporting dataset preparation';
GO
