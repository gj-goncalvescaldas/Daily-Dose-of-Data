SELECT

  EXTRACT(month from curr_month.login_date) AS mth,
  COUNT(DISTINCT curr_month.user_id) AS reactivated_users

FROM user_logins AS curr_month

WHERE NOT EXISTS (

  SELECT *
  
  FROM user_logins AS last_month
  
  WHERE 
    curr_month.user_id = last_month.user_id
    AND EXTRACT(MONTH FROM last_month.login_date) = EXTRACT(MONTH FROM curr_month.login_date  - '1 month' :: INTERVAL)
  
)

GROUP BY EXTRACT(MONTH FROM curr_month.login_date)
ORDER BY mth