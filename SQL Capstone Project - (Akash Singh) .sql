

CREATE DATABASE WesternFinancialData;
USE WesternFinancialData;

CREATE TABLE Financial_Data (
    Segment VARCHAR(50),
    Country VARCHAR(50),
    Product VARCHAR(50),
    Discount_Band VARCHAR(50),
    Units_Sold FLOAT,
    Manufacturing_Price FLOAT,
    Sale_Price FLOAT,
    Gross_Sales FLOAT,
    Discounts FLOAT,
    Sales FLOAT,
    COGS FLOAT,
    Profit FLOAT,
    Date DATE,
    Month_Number INT,
    Month_Name VARCHAR(20),
    Year INT
);


Select * From Financial_Data;

Select * From Financial_Data Limit 5;

Select COUNT(*)From Financial_Data;

SELECT Country, SUM(Sales) AS Total_Sales
FROM Financial_Data
GROUP BY Country
ORDER BY Total_Sales DESC;

SELECT SUM(gross_sales) AS total_sales FROM Financial_Data;

SELECT country, SUM(gross_sales) AS sales
FROM Financial_Data GROUP BY 1 ORDER BY 2 DESC LIMIT 10;

SELECT segment, SUM(profit) AS profit
FROM Financial_Data GROUP BY 1 ORDER BY 2 DESC;

SELECT SUM(Units_Sold) as 'Total_Units_Sold'
from Financial_Data;

SELECT distinct Product
from Financial_Data;

SELECT * from Financial_Data
Order by Sales desc limit 5;

SELECT Product, MAX(Sale_Price) as Max_Price, MIN(Sale_Price) as Min_Price
from Financial_Data Group by Product;

SELECT * From Financial_Data
Where Sales>50000;

SELECT * From Financial_Data
Where Discounts>0;

SELECT Product
From Financial_Data
Where Segment = 'Government';