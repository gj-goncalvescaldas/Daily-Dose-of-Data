SELECT 
  payment_method,
  ROUND(
    COUNT(order_id)::numeric / COUNT(DISTINCT customer_id), 
    1
  )
FROM orders

GROUP BY payment_method