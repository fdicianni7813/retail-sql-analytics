-- Customer Segmentation View

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