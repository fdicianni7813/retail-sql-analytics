-- Low stock products

SELECT
    product_name,
    category,
    stock_remaining
FROM retail_sales
WHERE stock_remaining < 20
ORDER BY stock_remaining ASC;

-- Unique products at risk of stockout

SELECT
    product_name,
    category,
    MIN(stock_remaining) AS current_stock
FROM retail_sales
GROUP BY product_name, category
HAVING current_stock < 20
ORDER BY current_stock ASC;

-- Average stock by category

SELECT
    category,
    AVG(stock_remaining) AS avg_stock
FROM retail_sales
GROUP BY category
ORDER BY avg_stock ASC;

-- Profitable products with low stock

SELECT
    product_name,
    category,
    SUM(profit) AS total_profit,
    MIN(stock_remaining) AS current_stock
FROM retail_sales
GROUP BY product_name, category
HAVING current_stock < 20
ORDER BY total_profit DESC;

-- Categories with highest number of low-stock products

SELECT
    category,
    COUNT(*) AS low_stock_products
FROM retail_sales
WHERE stock_remaining < 20
GROUP BY category
ORDER BY low_stock_products DESC;