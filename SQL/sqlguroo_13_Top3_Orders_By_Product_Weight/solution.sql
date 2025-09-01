WITH order_weights AS (
  SELECT
    od.order_id,
    SUM(pd.weight) as total_weight

  FROM order_details  od
  
  JOIN product_detail pd
    ON od.product_id = pd.product_id

  GROUP BY od.order_id

  ORDER BY total_weight DESC
  LIMIT 3
)

SELECT order_id FROM order_weights 