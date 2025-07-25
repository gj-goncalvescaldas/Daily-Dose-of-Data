WITH CTE AS (
SELECT
  t.order_id,
  t.user_id,
  u.city
  
FROM trades t
JOIN users u 
  ON t.user_id = u.user_id
  
WHERE t.status = 'Completed'
)
SELECT
  city,
  COUNT(DISTINCT order_id) as total_orders
FROM CTE 
GROUP BY city 
ORDER BY total_orders desc 
LIMIT 3