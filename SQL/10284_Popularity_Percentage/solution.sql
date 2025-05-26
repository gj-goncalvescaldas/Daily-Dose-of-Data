WITH total_users AS (
SELECT COUNT(DISTINCT user_id) AS total
FROM (
    SELECT user1 as user_id FROM facebook_friends
    UNION
    SELECT user2 as user_id FROM facebook_friends
) all_users

),

friend_counts AS (
SELECT user1 as user_id,COUNT(*) as cnnt
FROM facebook_friends
GROUP BY user_id

UNION 

SELECT user2 as user_id, COUNT(*) as cnnt
FROM facebook_friends
GROUP BY user_id
)

SELECT 
    a.user_id,
    ROUND(SUM(a.cnnt) * 100 / t.total,2) as popularity_percent

FROM friend_counts a
CROSS JOIN total_users t

GROUP BY a.user_id
ORDER BY a.user_id