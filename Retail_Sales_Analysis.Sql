CREATE DATABASE retail_sales_analysis;
USE retail_sales_analysis;
SHOW TABLES;
SELECT COUNT(*)
FROM retail_sales_Sql;
Select  *
From retail_sales_Sql
LIMIT 10;
SELECT COUNT(*) AS total_records
FROM retail_sales_sql;
SELECT *
FROM retail_sales_sql
LIMIT 30;
DESCRIBE retail_sales_sql;
SELECT `Order id`, COUNT(*) AS duplicate_count
FROM retail_sales_sql
GROUP BY `Order id`
HAVING COUNT(*) > 1;
SHOW COLUMNS FROM retail_sales_sql;
ALTER TABLE retail_sales_sql
CHANGE COLUMN ï»¿Order_id Order_id INT;
SELECT Order_id, COUNT(*) AS duplicate_count
FROM retail_sales_sql
GROUP BY Order_id
HAVING COUNT(*) > 1;
SELECT *
FROM retail_sales_sql
WHERE Order_id IS NULL;
SELECT
SUM(`Order_id`IS NULL) AS Null_Order_ID,
SUM(`Order Date` IS NULL) AS Null_Order_Date,
SUM(`Product Name` IS NULL) AS Null_Product,
SUM(`Category` IS NULL) AS Null_Category,
SUM(`Region` IS NULL) AS Null_Region,
SUM(`Quantity` IS NULL) AS Null_Quantity,
SUM(`Sales` IS NULL) AS Null_Sales,
SUM(`Profit` IS NULL) AS Null_Profit
FROM retail_sales_sql;
SELECT
COUNT(*) AS Total_Records,
COUNT(DISTINCT Order_id) AS Total_Orders,
SUM(Quantity) AS Total_Quantity,
SUM(Sales) AS Total_Sales,
SUM(Profit) AS Total_Profit
FROM retail_sales_sql;
SELECT
    Category,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_sales_sql
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT
    Region,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_sales_sql
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT
    `Product Name`,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_sales_sql
GROUP BY `Product Name`
ORDER BY Total_Sales DESC;
SELECT `Order date`
FROM retail_sales_sql
LIMIT 10;
SELECT
    DATE_FORMAT(`Order date`, '%Y-%m') AS Month,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_sales_sql
GROUP BY Month
ORDER BY Month;
SELECT
    `Product Name`,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_sales_sql
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 5;
SELECT
    DATE_FORMAT(`Order date`, '%Y-%m') AS Month,
    SUM(Sales) AS Total_Sales
FROM retail_sales_sql
GROUP BY Month
ORDER BY Month;
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM retail_sales_sql
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT
    Category,
    SUM(Quantity) AS Total_Quantity,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM retail_sales_sql
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT
    Region,
    SUM(Profit) AS Total_Profit
FROM retail_sales_sql
GROUP BY Region
ORDER BY Total_Profit DESC;
SELECT
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(
        SUM(Profit) * 100.0 / SUM(Sales), 2
    ) AS Profit_Percentage
FROM retail_sales_sql
GROUP BY `Product Name`
ORDER BY Profit_Percentage DESC;