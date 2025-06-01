WITH CTE AS (
SELECT
    *,
    SUM(total_order_cost) AS max_cost
FROM orders

WHERE (order_date BETWEEN '2019-02-01' AND '2019-05-01') 

GROUP BY order_date, cust_id
)
SELECT
    c.first_name,
    cte.order_date,
    cte.max_cost
    
FROM CTE cte

JOIN customers c ON c.id = cte.cust_id

WHERE cte.max_cost = (SELECT max(max_cost) FROM CTE)

