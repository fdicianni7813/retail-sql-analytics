-- Most active customers

SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM retail_sales
GROUP BY customer_id
ORDER BY total_orders DESC;

-- Most profitable customers

SELECT
    customer_id,
    SUM(profit) AS total_profit
FROM retail_sales
GROUP BY customer_id


-- Average profit per customer order

SELECT
    customer_id,
    ROUND(AVG(profit), 2) AS avg_profit_per_order,
    COUNT(order_id) AS total_orders
FROM retail_sales
GROUP BY customer_id
HAVING total_orders >= 2
ORDER BY avg_profit_per_order DESC;

-- Customer segmentation

SELECT
    customer_id,
    SUM(profit) AS total_profit,
    CASE
        WHEN SUM(profit) >= 150 THEN 'High Value'
        WHEN SUM(profit) >= 75 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM retail_sales
GROUP BY customer_id
ORDER BY total_profit DESC;

-- Customer segment distribution

WITH customer_segments AS (

    SELECT
        customer_id,
        SUM(profit) AS total_profit,
        CASE
            WHEN SUM(profit) >= 150 THEN 'High Value'
            WHEN SUM(profit) >= 75 THEN 'Medium Value'
            ELSE 'Low Value'
        END AS customer_segment

    FROM retail_sales
    GROUP BY customer_id

)

SELECT
    customer_segment,
    COUNT(*) AS total_customers

FROM customer_segments

GROUP BY customer_segment
ORDER BY total_customers DESC;