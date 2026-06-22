-- Sales volume by category

SELECT
    category,
    SUM(quantity_sold) AS total_units_sold
FROM retail_sales
GROUP BY category
ORDER BY total_units_sold DESC;

-- Profit by category

SELECT
    category,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY category
ORDER BY total_profit DESC;

-- Revenue by category

SELECT
    category,
    SUM(price * quantity_sold) AS total_revenue
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;

-- Top profitable products

SELECT
    product_name,
    category,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY product_name, category
ORDER BY total_profit DESC
LIMIT 10;

-- Average profit per transaction by category

SELECT
    category,
    ROUND(AVG(profit), 2) AS avg_profit
FROM retail_sales
GROUP BY category
ORDER BY avg_profit DESC;