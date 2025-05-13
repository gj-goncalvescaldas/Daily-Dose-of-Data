SELECT 
    ft.user_id,
    ft.trial_avg_duration,
    p.paid_avg_duration
FROM (
    SELECT user_id, ROUND(AVG(activity_duration),2) as trial_avg_duration
    FROM UserActivity
    WHERE activity_type = 'free_trial'
    GROUP BY user_id
) ft

JOIN (
    SELECT user_id, ROUND(AVG(activity_duration),2) as paid_avg_duration 
    FROM UserActivity
    WHERE activity_type = 'paid'
    GROUP BY user_id        
) p
    ON ft.user_id = p.user_id 






/* SELECT 
    ua.user_id,
    ROUND((
        SELECT AVG(activity_duration)
        FROM UserActivity
        WHERE activity_type = 'free_trial' AND ua.user_id = user_id
    ),2) as trial_avg_duration,
    ROUND((
        SELECT AVG(activity_duration)
        FROM UserActivity
        WHERE activity_type = 'paid' AND ua.user_id = user_id
    ),2) as paid_avg_duration

FROM UserActivity ua
WHERE ua.user_id IN (
    SELECT distinct user_id
    FROM UserActivity
    WHERE activity_type = 'paid'
)
GROUP BY ua.user_id
*/