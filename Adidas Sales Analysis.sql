USE adidas_db;
SELECT * FROM adidas;

ALTER TABLE adidas
    RENAME COLUMN `Retailer ID` TO retailer_id,
    RENAME COLUMN `Invoice Date` TO invoice_date,
    RENAME COLUMN `Price per Unit` TO price_per_unit,
    RENAME COLUMN `Units Sold` TO units_sold,
    RENAME COLUMN `Total Sales` TO total_sales,
    RENAME COLUMN `Operating Profit` TO operating_profit,
    RENAME COLUMN `Operating Margin` TO operating_margin,
    RENAME COLUMN `Sales Method` TO sales_method;


### Business Problems

-- Q1. Total Sales by Retailer
SELECT Retailer, SUM(total_sales) AS Total_Sales
FROM adidas
GROUP BY Retailer
ORDER BY Total_Sales DESC;

-- Q2. Units Sold by Product
SELECT Product, SUM(units_sold) AS Units_Sold
FROM adidas
GROUP BY Product
ORDER BY Units_Sold DESC;

-- Q3. Sales by Region
SELECT Region, SUM(total_sales) AS Total_Sales
FROM adidas
GROUP BY Region
ORDER BY Total_Sales DESC;

-- Q4. Monthly Sales Trend
SELECT DATE_FORMAT(Invoice_Date, '%Y-%m') AS Month, SUM(Total_Sales) AS Total_Sales
FROM adidas
GROUP BY DATE_FORMAT(Invoice_Date, '%Y-%m')
ORDER BY Month;

-- Q5. Profitability by Product
SELECT Product, SUM(operating_profit) AS Profit
FROM adidas
GROUP BY Product
ORDER BY Profit DESC;

-- Q6. Top-Selling Products in Each Region
SELECT Region, Product, SUM(units_sold) AS Units_Sold
FROM adidas
GROUP BY Region,Product
ORDER BY Region, Units_Sold DESC;

-- Q7. City-Wise Sales Breakdown
SELECT City, SUM(total_sales) AS Total_Sales
FROM adidas
GROUP BY City
ORDER BY Total_Sales DESC;

-- Q8. Sales Method Comparison
SELECT sales_method, 
	SUM(Total_Sales) AS Total_Sales, 
	ROUND(AVG(Operating_Margin),4) AS Avg_Operating_Margin
FROM adidas
GROUP BY Sales_Method;

-- Q9. Seasonality Analysis
SELECT QUARTER(Invoice_Date) AS Quarter, 
	SUM(Total_Sales) AS Total_Sales, 
    ROUND(AVG(Operating_Margin),4) AS Avg_Operating_Margin
FROM adidas
GROUP BY QUARTER(Invoice_Date);

-- Q10. Profitability Hotspots
SELECT State, Product, 
	ROUND(AVG(Operating_Margin),4) AS Avg_Operating_Margin
FROM adidas
GROUP BY State, Product
ORDER BY Avg_Operating_Margin DESC
LIMIT 10;
