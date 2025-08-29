WITH products_by_order AS (
  SELECT 
    order_id,
    COUNT(product_id) as count
  
  FROM order_details 

  GROUP BY id, order_id
)

SELECT 
  COUNT(*) as count
  
FROM products_by_order

WHERE 
  count >= 2