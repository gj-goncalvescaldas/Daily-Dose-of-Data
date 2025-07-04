WITH customer AS (
SELECT
  c.customer_id,
  COUNT(DISTINCT p.product_category) as dist_product_category
FROM customer_contracts c
JOIN products p 
  ON p.product_id = c.product_id

GROUP BY customer_id
),

product AS (
SELECT 
  COUNT(DISTINCT product_category) as dist_product_category
FROM products
)

SELECT
  c.customer_id
FROM customer c 
JOIN product p
  ON c.dist_product_category = p.dist_product_category