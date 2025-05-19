SELECT 
    p.product_name,
    SUM(o.unit) as unit

FROM Orders o

LEFT JOIN Products p ON p.product_id = o.product_id

WHERE MONTH(o.order_date) = 02 AND YEAR(o.order_date) = 2020

GROUP BY o.product_id

HAVING unit >= 100
