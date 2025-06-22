WITH CTE AS (
SELECT 
    c.id
FROM customers c

JOIN orders o 
    ON c.id = o.cust_id 
    AND order_date BETWEEN '2019-02-01' AND '2019-03-01'
)

SELECT 
    first_name

FROM customers
WHERE 
    id NOT IN (SELECT DISTINCT id FROM CTE) 
 