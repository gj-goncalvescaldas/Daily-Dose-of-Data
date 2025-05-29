SELECT 
    cust_id,
    SUM(total_order_cost) as total_revenue
    
FROM orders

WHERE MONTH(order_date) = 3 AND YEAR(order_date) = 2019

GROUP BY cust_id

ORDER BY total_revenue DESC
