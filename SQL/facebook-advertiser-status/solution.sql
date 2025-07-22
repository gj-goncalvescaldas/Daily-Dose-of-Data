WITH CTE AS (
SELECT
  COALESCE(a.user_id, d.user_id) AS user_id,
  a.status,
  d.paid

FROM advertiser a 
FULL OUTER JOIN daily_pay d 
  ON a.user_id = d.user_id

)

SELECT 
  user_id,
  CASE 
    WHEN paid IS NULL THEN 'CHURN' 
    WHEN paid IS NOT NULL AND status IN ('NEW','EXISTING','RESURRECT') THEN 'EXISTING'
    WHEN paid IS NOT NULL AND status = 'CHURN' THEN 'RESURRECT'
    WHEN paid IS NOT NULL AND status IS NULL THEN 'NEW'
  END AS new_status 
  
FROM CTE 
ORDER BY user_id