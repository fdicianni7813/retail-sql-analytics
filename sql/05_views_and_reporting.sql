-- Create Customer Segmentation View

CREATE VIEW customer_segments AS

SELECT
    customer_id,
    SUM(profit) AS total_profit,
    CASE
        WHEN SUM(profit) >= 150 THEN 'High Value'
        WHEN SUM(profit) >= 75 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM retail_sales
GROUP BY customer_id;

-- View preview

SELECT *
FROM customer_segments
LIMIT 10;

-- Customer segment distribution

SELECT
    customer_segment,
    COUNT(*) AS total_customers
FROM customer_segments
GROUP BY customer_segment
ORDER BY total_customers DESC;

-- Average profit by segment

SELECT
    customer_segment,
    ROUND(AVG(total_profit), 2) AS avg_profit
FROM customer_segments
GROUP BY customer_segment
ORDER BY avg_profit DESC;