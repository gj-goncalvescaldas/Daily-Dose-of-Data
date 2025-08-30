SELECT 
  o.payment_method,
  COUNT(od.product_id)
  
  
FROM orders o

JOIN order_details od 
  ON o.order_id = od.order_id

GROUP BY payment_method