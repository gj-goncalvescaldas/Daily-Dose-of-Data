WITH CTE AS (
    SELECT product_id
    FROM Sales
    WHERE sale_date >= '2019-04-01' OR sale_date < '2019-01-01'
)


SELECT 
    DISTINCT s.product_id, 
    p.product_name
FROM Sales s
JOIN Product p 
    ON p.product_id = s.product_id
WHERE 
    s.sale_date >= '2019-01-01' 
    AND s.sale_date < '2019-04-01' 
    AND s.product_id NOT IN (
        SELECT * FROM CTE
    )