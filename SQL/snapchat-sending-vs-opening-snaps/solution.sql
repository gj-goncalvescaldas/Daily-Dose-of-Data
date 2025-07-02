WITH CTE AS (
SELECT
  ab.age_bucket,
  SUM(CASE WHEN activity_type = 'open' THEN time_spent ELSE 0 END) AS open_total,
  SUM(CASE WHEN activity_type = 'send' THEN time_spent ELSE 0 END) AS send_total
  
FROM activities a
JOIN age_breakdown ab 
  ON ab.user_id = a.user_id
  
GROUP BY age_bucket

)

SELECT 
  age_bucket,
  ROUND((send_total/(open_total + send_total)) * 100.0, 2) AS send_perc,
  ROUND((open_total/(open_total + send_total)) * 100.0, 2) AS open_perc
FROM CTE