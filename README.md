# Assignment3_MIST353
## Part 1 (Short Statement)

First executive order of Galactic Gadget Inc. is to change its name to EcoInvest. During our talks of merging our web applications, we concluded that merging the interactive maps into EcoInvest was the best course of action. We will be incorporating the maps into more detailed webpages of each company we track. We plan to show a heatmap of climate data for the area around each company’s headquarters.

## Stored Procedures

1.	spCompanyDetails <br/>
•	Description: Get all details for a company by companyID. Used to generate data for a company’s detailed information page.
2.	spCompanyAdd <br/>
•	Description: Add a company. Used to add company details to track information.
3.	spSearchCompaniesByGeoLocation <br/>
•	Description: Get all companies within a certain radius of given latitude and longitude. Used to search for companies around the given latitude and longitude.
4.	spDataAddToCompany <br/>
•	Description: Add data to an existing company. 
5.	spViewCompanyDataByDateRange <br/>
•	Description: Get company data based off of a given data range.
6.	spGetCompanyClimateRating <br/>
•	Description: Get company climate rating. Used to show the user the climate rating we calculated based on their impact. Will be on a scale of 1 to 10 with 1 being awful and 10 being great.
