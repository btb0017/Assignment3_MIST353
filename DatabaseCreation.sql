CREATE DATABASE EcoInvest_DB;
GO

USE EcoInvest_DB;
GO

CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    CompanyName NVARCHAR(50),
    CompanyStreet NVARCHAR(50),
    CompanyCity NVARCHAR(MAX),
    CompanyState NVARCHAR(MAX),
    CompanyCountry NVARCHAR(50),
    CompanyZip NVARCHAR(10),
    CompanyEmail NVARCHAR(MAX),
    CompanyLatitude NVARCHAR(MAX),
    CompanyLongitude NVARCHAR(MAX),
    CompanyWebsite NVARCHAR(MAX),
    CompanyClimateRating INT
);
GO

CREATE TABLE Date (
    DateID INT PRIMARY KEY IDENTITY(1,1),
    DateValue DATE UNIQUE
);
GO

CREATE TABLE ClimateData (
    ClimateDataID INT PRIMARY KEY IDENTITY(1,1),
    CompanyID INT,
    DateID INT,
    Temperature FLOAT,
    Humidity FLOAT,
    CO2Levels FLOAT,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID),
    FOREIGN KEY (DateID) REFERENCES Date(DateID)
);
GO

CREATE TABLE StockData (
    StockDataID INT PRIMARY KEY IDENTITY(1,1),
    CompanyID INT,
    DateID INT,
    OpeningPrice FLOAT,
    ClosingPrice FLOAT,
    High FLOAT,
    Low FLOAT,
    Volume INT,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID),
    FOREIGN KEY (DateID) REFERENCES Date(DateID)
);
GO