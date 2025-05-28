SELECT
    cust_id as id, 
    COUNT(id) as total_orders

FROM orders

GROUP BY cust_id

ORDER BY total_orders DESC

LIMIT 1