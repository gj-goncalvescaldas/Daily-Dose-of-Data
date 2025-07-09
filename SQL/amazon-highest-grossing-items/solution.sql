WITH CTE AS (
SELECT
  category,
  product,
  SUM(spend) as total_spend

FROM product_spend

WHERE EXTRACT(YEAR FROM transaction_date) = 2022

GROUP BY category, product

),

CTE2 AS (
SELECT
  *,
  ROW_NUMBER() OVER (PARTITION BY category ORDER BY total_spend DESC) AS rn

FROM CTE
)

SELECT
  category,
  product,
  total_spend

FROM CTE2

WHERE rn <= 2

ORDER BY category, rn 