WITH CTE AS (
    SELECT product_id, min(year) as year
    FROM Sales
    GROUP BY product_id
)

SELECT s.product_id, s.year AS first_year, s.quantity, s.price
FROM Sales s
JOIN CTE cte ON s.product_id = cte.product_id AND s.year = cte.year
GROUP BY s.sale_id