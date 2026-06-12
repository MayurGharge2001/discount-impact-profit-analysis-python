-- CREATE TABLE
CREATE TABLE Transections(
Order_ID	INT PRIMARY KEY,	
Order_Date	 DATE,	
Customer_Name	VARCHAR(50),
Region	VARCHAR(50)	,
City	VARCHAR(50),	
Category	VARCHAR(50)	,
Sub_Category	VARCHAR(50),	
Product_Name	VARCHAR(50)	,
Quantity	INT ,	
Unit_Price	INT ,	
Discount	INT ,	
Sales	NUMERIC(10,2),	
Profit	NUMERIC(10,2),	
Payment_Mode	VARCHAR(50)	
);

SELECT * FROM Transections;

-- IMPORT DATA
COPY
Transections (Order_ID, Order_Date, Customer_Name,	Region,	City, Category,	
Sub_Category, Product_Name,	Quantity, Unit_Price, Discount,	Sales, Profit, Payment_Mode)
FROM 'D:\Projects\1-Retail Sales\Ecommerce_Sales_Data_2024_2025.csv'
DELIMITER','
CSV HEADER;

-- ANALYSIS

-- 1.What is the overall sales, profit, and average discount?

SELECT
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(AVG(discount),2) AS avg_discount
FROM Transections;


-- 2.How are discounts distributed across transactions?

SELECT
    discount,
    COUNT(*) AS total_orders
FROM Transections
GROUP BY discount
ORDER BY discount;


-- 3.Which discount levels generate the highest and lowest profit?

SELECT
    CASE
        WHEN discount = 0 THEN 0
        WHEN discount = 5 THEN 5
        WHEN discount = 10 THEN 10
		WHEN discount = 15 THEN 15
        ELSE 20
    END AS discount_bucket,
    
    ROUND(AVG(profit),2) AS avg_profit,
    ROUND(AVG(sales),2) AS avg_sales

FROM Transections
GROUP BY discount_bucket
ORDER BY discount_bucket ;


-- 4.At which discount range does profit start declining?

SELECT
    CASE
        WHEN discount = 0 THEN 0
        WHEN discount = 5 THEN 5
        WHEN discount = 10 THEN 10
		WHEN discount = 15 THEN 15
        ELSE 20
    END AS discount_bucket,

    ROUND(AVG(profit),2) AS avg_profit

FROM Transections
GROUP BY discount_bucket
ORDER BY discount_bucket;


-- 5.Are there cases where high discounts do not significantly increase sales?

SELECT
    CASE
        WHEN discount = 0 THEN 0
        WHEN discount = 5 THEN 5
        WHEN discount = 10 THEN 10
		WHEN discount = 15 THEN 15
        ELSE 20
    END AS discount_bucket,

    ROUND(AVG(sales),2) AS avg_sales,
    ROUND(AVG(quantity),2) AS avg_quantity,
    ROUND(AVG(profit),2) AS avg_profit

FROM Transections
GROUP BY discount_bucket
ORDER BY discount_bucket;


-- 6.Which regions have the highest average discounts?

SELECT
    region,
    ROUND(AVG(discount),2) AS avg_discount
FROM Transections
GROUP BY region
ORDER BY avg_discount DESC;


-- 7.Which regions show inefficient discounting?(High Discount + Low Sales + Low Profit)

SELECT
    region,
    ROUND(AVG(discount),2) AS avg_discount,
    ROUND(AVG(sales),2) AS avg_sales,
    ROUND(AVG(profit),2) AS avg_profit
FROM Transections
GROUP BY region
ORDER BY avg_discount DESC, avg_profit ASC;


-- 8.Which categories receive the highest discounts?

SELECT
    category,
    ROUND(AVG(discount),2) AS avg_discount
FROM Transections
GROUP BY category
ORDER BY avg_discount DESC;


-- 9.Which categories show inefficient discounting?

SELECT
    category,
    ROUND(AVG(discount),2) AS avg_discount,
    ROUND(AVG(sales),2) AS avg_sales,
    ROUND(AVG(profit),2) AS avg_profit
FROM Transections
GROUP BY category
ORDER BY avg_discount DESC, avg_profit ASC;


-- 10.Which Region–Category combinations have high discounts but low profit?

SELECT
    region,
    category,
    ROUND(AVG(discount),2) AS avg_discount,
    ROUND(AVG(profit),2) AS avg_profit
FROM Transections
GROUP BY region, category
ORDER BY avg_discount DESC, avg_profit ASC;


--11.What are the Top 10 most profitable products?

SELECT
    product_name,
    SUM(profit) AS total_profit
FROM Transections
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;


-- 12.What are the Bottom 10 least profitable products?

SELECT
    product_name,
    SUM(profit) AS total_profit
FROM Transections
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 10;


-- 13.How does payment mode affect sales and profit?

SELECT
    payment_mode,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM Transections
GROUP BY payment_mode
ORDER BY total_profit DESC;


-- 14.Monthly trend of sales, profit, and average discount

SELECT
    DATE_TRUNC('month', order_date) AS month,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit,
    ROUND(AVG(discount),2) AS avg_discount
FROM Transections
GROUP BY month
ORDER BY month;


-- 15.What discount range provides the best balance between sales and profit?

SELECT
    CASE
        WHEN discount = 0 THEN 0
        WHEN discount = 5 THEN 5
        WHEN discount = 10 THEN 10
		WHEN discount = 15 THEN 15
        ELSE 20
    END AS discount_bucket,

    ROUND(AVG(sales),2) AS avg_sales,
    ROUND(AVG(profit),2) AS avg_profit,
    ROUND(AVG(quantity),2) AS avg_quantity

FROM Transections
GROUP BY discount_bucket
ORDER BY discount_bucket;