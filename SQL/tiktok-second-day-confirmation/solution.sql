SELECT 
  e.user_id

FROM emails e
JOIN texts t 
  ON e.email_id = t.email_id
  AND t.action_date - INTERVAL '1 day' = e.signup_date
  AND t.signup_action = 'Confirmed'