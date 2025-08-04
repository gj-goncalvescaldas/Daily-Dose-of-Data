WITH total AS (
SELECT
  user_id, 
  COUNT(tweet_id) AS tweet_count_per_user

FROM tweets
WHERE EXTRACT(year from tweet_date) = 2022
GROUP BY  
  user_id
)

SELECT 
  tweet_count_per_user AS tweet_bucket, 
  COUNT(user_id) AS users_num 
FROM total 
GROUP BY tweet_count_per_user