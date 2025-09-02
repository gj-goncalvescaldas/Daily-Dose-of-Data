WITH orders_reduced AS (
  SELECT 
    order_id,
    EXTRACT(month from order_date) as mnt
  
  FROM orders

  WHERE EXTRACT(year from order_date) = 2021
),

order_product AS (
  SELECT 
    od.product_id,
    COUNT(DISTINCT o.mnt) AS distinct_mnt
  
  FROM orders_reduced o

  JOIN order_details od
    ON o.order_id = od.order_id

  GROUP BY product_id
)

SELECT
  product_name
  
FROM order_product op

JOIN product_detail pd
  ON op.product_id = pd.product_id

WHERE 
    op.distinct_mnt > 6