SELECT 
    activity_date as day,
    COUNT(DISTINCT user_id) as active_users

FROM Activity

# WHERE DATEDIFF('2019-07-27', activity_date) BETWEEN 0 AND 29 (LESS EFFICIENT)

WHERE activity_date BETWEEN DATE_SUB('2019-07-27', INTERVAL 29 DAY) AND '2019-07-27'

GROUP BY activity_date