-- Check total records

SELECT COUNT(*) AS total_orders
FROM retail_sales;

-- Most expensive products

SELECT
    product_name,
    category,
    price
FROM retail_sales
ORDER BY price DESC
LIMIT 10;

-- Filter products by category

SELECT
    product_name,
    category,
    price
FROM retail_sales
WHERE category = 'Wine';

-- Show recent orders

SELECT
    order_id,
    order_date,
    product_name
FROM retail_sales
ORDER BY order_date DESC
LIMIT 10;

-- Check available payment methods

SELECT DISTINCT payment_method
FROM retail_sales;