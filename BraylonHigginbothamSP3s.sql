USE EcoIvest_DB;
GO

Create or alter Procedure spSearchCompaniesByGeoLocation
@CompanyLatitude NVARCHAR(MAX)
@CompanyLongitude NVARCHAR(MAX)
@CompanyName NVARCHAR(50)
@CompanyStreet NVARCHAR(50)
@CompanyCity NVARCHAR(MAX)
@CompanyState NVARCHAR(MAX)
@CompanyCountry NVARCHAR(50)
@CompanyZip NVARCHAR(10)
@CompanyEmail NVARCHAR(MAX)
@CompanyWebsite NVARCHAR(MAX)
@CompanyClimateRating INT
AS
Begin
	SELECT CompanyName
	CompanyWebsite, 
	CompanyClimateRating
	CompanyStreet,
	CompanyCity,
	CompanyState,
	CompanyCountry,
	CompanyZip, 
	CompanyEmail
	FROM Company
    WHERE CompanyLatitude = @Latitude
    AND CompanyLongitude = @Longitude
END;
GO

EXEC spSearchCompaniesByGeoLocation '25.7617', '-80.1918'
GO
