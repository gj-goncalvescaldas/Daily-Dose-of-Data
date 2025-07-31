WITH CTE AS (
SELECT
  user_id,
  EXTRACT(MONTH FROM event_date) as month

FROM user_actions

WHERE EXTRACT(YEAR FROM event_date) = 2022

GROUP BY user_id, month
)

SELECT 
  cte1.month,
  COUNT(DISTINCT cte1.user_id) as monthly_active_users
FROM CTE cte1
JOIN CTE cte2
  ON cte1.user_id = cte2.user_id
  AND cte1.month = 7
  AND cte2.month = 6
  
GROUP BY cte1.month
  