-- 1️ View raw data (optional check)
SELECT * FROM online_sales LIMIT 10;

-- 2️ Extract year and month from order_date, and calculate revenue & order volume
SELECT EXTRACT(YEAR FROM order_date) AS year,EXTRACT(MONTH FROM order_date) AS month,SUM(amount) AS total_revenue,COUNT(DISTINCT order_id) AS total_orders FROM online_sales
GROUP BY EXTRACT(YEAR FROM order_date),EXTRACT(MONTH FROM order_date)ORDER BY year, month;

-- 3️(Optional) Filter for specific year, e.g., 2024
SELECT EXTRACT(YEAR FROM order_date) AS year,EXTRACT(MONTH FROM order_date) AS month,SUM(amount) AS total_revenue,COUNT(DISTINCT order_id) AS total_orders FROM online_sales
WHERE EXTRACT(YEAR FROM order_date) = 2024 GROUP BY EXTRACT(YEAR FROM order_date),EXTRACT(MONTH FROM order_date)
ORDER BY month;
