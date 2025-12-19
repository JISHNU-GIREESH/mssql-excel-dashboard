-- Total Pizzas Sold by Pizza Category
SELECT pizza_category, sum(quantity) as Total_Pizza_Sold
from pizza_sales
group by pizza_category



--Top 5 best sellers by Total Pizza sold 
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_name
   ORDER BY SUM(quantity) DESC

--Bottom 5 worst sellers by total pizzas sold
SELECT TOP 5 pizza_name, SUM(quantity) AS Total_Pizzas_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY SUM(quantity) ASC


