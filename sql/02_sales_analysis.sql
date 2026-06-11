-- Sales volume by category

SELECT
    category,
    SUM(quantity_sold) AS total_units_sold
FROM retail_sales
GROUP BY category
ORDER BY total_units_sold DESC;