WITH CTE AS
(SELECT
  user_id,
  DATE(transaction_date) as date
FROM transactions)

SELECT DISTINCT cte1.user_id

FROM CTE cte1

JOIN CTE cte2
  ON cte2.date = (cte1.date + 1)
  AND cte2.user_id = cte1.user_id

JOIN CTE cte3
  ON cte3.date = (cte2.date + 1)
  AND cte3.user_id = cte2.user_id
  
ORDER BY user_id ASC