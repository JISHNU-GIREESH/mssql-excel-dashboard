--Daily Trend
SELECT 
    DATENAME(dw, order_date) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATENAME(dw, order_date);

--Hourly Trend
SELECT 
    DATEPART(HOUR, order_time) AS order_hour,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY order_hour;
