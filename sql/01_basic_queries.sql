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