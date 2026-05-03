-- Sales by category
SELECT Category, SUM(Sales) AS total_sales
FROM sales
GROUP BY Category
ORDER BY total_sales DESC;

-- Profit by region
SELECT Region, SUM(Profit) AS total_profit
FROM sales
GROUP BY Region
ORDER BY total_profit DESC;

-- Sub-categories with negative profit
SELECT "Sub-Category", SUM(Profit) AS total_profit
FROM sales
GROUP BY "Sub-Category"
HAVING total_profit < 0
ORDER BY total_profit;