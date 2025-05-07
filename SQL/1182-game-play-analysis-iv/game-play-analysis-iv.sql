SELECT 
    ROUND(
        count(a2.player_id)/count(a1.player_id)
        ,2) as fraction
FROM (
    SELECT 
    player_id,
    MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) AS a1
LEFT JOIN Activity a2
    ON a1.player_id = a2.player_id AND a1.first_login = date_sub(a2.event_date, interval 1 day)