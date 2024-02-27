USE EcoInvest_DB;
GO
/* Stored Procedure #1: Get all details for a company by companyID. Used to generate data for a company’s detailed information page.*/
CREATE OR ALTER PROCEDURE spCompanyDetails
	@CompanyID int
	AS
	BEGIN
		SELECT * FROM Company WHERE CompanyID = @CompanyID;
	END;
	GO
/*
EXEC spCompanyDetails 
    @CompanyID = 1, 
GO
*/

/* Stored Procedure #2: Add a company. Used to add company details to track information.*/
CREATE OR ALTER PROCEDURE spCompanyAdd
	@CompanyID int,
	@CompanyName nvarchar(50),
	@CompanyStreet nvarchar(50),
	@CompanyCity nvarchar(MAX),
	@CompanyState nvarchar(MAX),
	@CompanyCountry nvarchar(50),
	@CompanyZip nvarchar(10),
	@CompanyEmail nvarchar(MAX),
	@CompanyLatitude nvarchar(MAX),
	@CompanyLongitude nvarchar(MAX),
	@CompanyWebsite nvarchar(MAX),
	@CompanyClimateRating int
		AS
		BEGIN
		INSERT INTO Company(CompanyID, CompanyName, CompanyStreet, CompanyCity, CompanyState, CompanyCountry, 
			CompanyZip, CompanyEmail, CompanyLatitude,CompanyLongitude,CompanyWebsite, CompanyClimateRating) 
		VALUES (@CompanyID, @CompanyName, @CompanyStreet, @CompanyCity, @CompanyState, @CompanyCountry, 
			@CompanyZip, @CompanyEmail, @CompanyLatitude, @CompanyLongitude , @CompanyWebsite , @CompanyClimateRating);
		END;
/* EXEC spCompanyAdd */
