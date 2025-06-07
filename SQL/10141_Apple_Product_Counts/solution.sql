WITH users_with_events AS (
  SELECT DISTINCT u.user_id, u.language
  FROM playbook_users u
  JOIN playbook_events e ON u.user_id = e.user_id
),
apple_users AS (
  SELECT DISTINCT u.user_id
  FROM playbook_users u
  JOIN playbook_events e ON u.user_id = e.user_id
  WHERE e.device IN ('macbook pro', 'iphone 5s', 'ipad air')
)

SELECT 
  uwe.language,
  COUNT(DISTINCT CASE WHEN au.user_id IS NOT NULL THEN uwe.user_id END) AS n_apple_user,
  COUNT(*) AS n_total_users
FROM users_with_events uwe
LEFT JOIN apple_users au ON uwe.user_id = au.user_id
GROUP BY uwe.language
ORDER BY n_total_users DESC;
