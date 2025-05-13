SELECT 
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