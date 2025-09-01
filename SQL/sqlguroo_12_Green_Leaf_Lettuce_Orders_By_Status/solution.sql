SELECT
  pd.product_name,
  SUM(DISTINCT CASE WHEN o.status = 'processed' THEN 1 ELSE 0 END) as processed_orders,
  SUM(DISTINCT CASE WHEN o.status = 'pending' THEN 1 ELSE 0 END) AS pending_orders,
  SUM(DISTINCT CASE WHEN o.status = 'shipped' THEN 1 ELSE 0 END) AS shipped_orders,
  SUM(DISTINCT CASE WHEN o.status = 'cancelled' THEN 1 ELSE 0 END) AS cancelled_orders
  
  
FROM orders o

JOIN order_details od
  ON o.order_id = od.order_id

JOIN product_detail pd
  ON od.product_id = pd.product_id
  AND pd.product_name = 'Green Leaf Lettuce'

GROUP BY product_name