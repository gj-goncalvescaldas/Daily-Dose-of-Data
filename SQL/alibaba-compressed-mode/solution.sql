WITH CTE AS (SELECT
  item_count as mode,
  DENSE_RANK() OVER (ORDER BY order_occurrences DESC) AS rn
  
FROM items_per_order
)

SELECT 
  mode 
FROM CTE 
WHERE rn = 1
ORDER BY mode ASC