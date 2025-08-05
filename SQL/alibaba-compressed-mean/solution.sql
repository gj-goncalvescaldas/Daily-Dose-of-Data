WITH CTE AS (
SELECT 
  SUM(order_occurrences * item_count) AS total_items,
  SUM(order_occurrences) AS total_orders

FROM items_per_order
)

SELECT
  ROUND( (total_items::numeric / total_orders::numeric), 1 ) AS mean
    
FROM CTE