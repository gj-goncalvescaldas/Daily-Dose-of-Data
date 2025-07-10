WITH total_users AS (
SELECT
  COUNT(DISTINCT user_id) AS total_users
FROM emails
),

confirmed_users AS (
SELECT
  email_id
FROM texts
WHERE signup_action = 'Confirmed'
),

jointable AS (
SELECT
  COUNT(DISTINCT e.user_id) AS total_users_confirmed
FROM emails e
INNER JOIN confirmed_users cu ON cu.email_id = e.email_id
)

SELECT
  ROUND(j.total_users_confirmed * 1.0/ t.total_users, 2) AS activation_rate
  
FROM jointable j 
JOIN total_users t 
  ON 1=1