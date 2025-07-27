WITH CTE AS (
SELECT 
  EXTRACT(year from transaction_date) as year,
  product_id,
  SUM(spend) as curr_year_spend,
  EXTRACT(year from transaction_date) - 1 as prev_year


FROM user_transactions

GROUP BY year, product_id
)

SELECT 
  cte1.year,
  cte1.product_id,
  cte1.curr_year_spend,
  cte2.curr_year_spend as prev_year_spend,
  ROUND((cte1.curr_year_spend * 100/ cte2.curr_year_spend), 2)-100 AS yoy_rate
FROM CTE cte1
LEFT JOIN CTE cte2
  ON cte1.product_id = cte2.product_id
  AND cte1.prev_year = cte2.year 

ORDER BY product_id, year