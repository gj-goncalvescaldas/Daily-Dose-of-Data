WITH CTE AS (
    SELECT customer_number, COUNT(*) AS Orders
    FROM Orders
    GROUP BY customer_number
)
SELECT customer_number
FROM CTE 
ORDER BY Orders DESC
LIMIT 1;
