USE ECOInvest_DB;

 Create OR ALTER PROCEDURE AddClimateAndStockData 

    @CompanyID INT,
    @DateValue DATE,
    @Temperature FLOAT,
    @Humidity FLOAT,
    @CO2Levels FLOAT,
    @OpeningPrice FLOAT,
    @ClosingPrice FLOAT,
    @High FLOAT,
    @Low FLOAT,
    @Volume INT
AS
BEGIN
    DECLARE @DateID INT

    SELECT @CompanyID = CompanyID 
	FROM Company 

    INSERT INTO ClimateData (CompanyID, DateID, Temperature, Humidity, CO2Levels)
    VALUES (@CompanyID, @DateID, @Temperature, @Humidity, @CO2Levels)

  
    INSERT INTO StockData (CompanyID, DateID, OpeningPrice, ClosingPrice, High, Low, Volume)
    VALUES (@CompanyID, @DateID, @OpeningPrice, @ClosingPrice, @High, @Low, @Volume)

  END;
  GO
