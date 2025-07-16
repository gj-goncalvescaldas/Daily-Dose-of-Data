
SELECT 
  CASE WHEN order_id % 2 = 0 THEN (order_id - 1) ELSE (order_id + 1) END AS corrected_order_id,
  item
FROM orders

WHERE order_id != (SELECT max(order_id) FROM orders)

UNION

SELECT 
  CASE WHEN order_id % 2 != 0 THEN order_id ELSE (order_id - 1) END AS corrected_order_id,
  item
FROM orders

WHERE order_id = (SELECT max(order_id) FROM orders)

ORDER BY corrected_order_id