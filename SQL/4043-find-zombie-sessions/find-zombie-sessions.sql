WITH CTE AS(
SELECT
    session_id,
    user_id,
    EXTRACT(EPOCH FROM (MAX(event_timestamp) - MIN (event_timestamp))) / 60 as session_duration_minutes,
    COUNT(CASE WHEN event_type = 'scroll' THEN 1 END) as scroll_count,
    COUNT(CASE WHEN event_type = 'click' THEN 1 END) as click_count,
    MAX(CASE WHEN event_type = 'purchase' THEN 1 ELSE 0 END )as purchase_flag


FROM app_events


GROUP BY session_id, user_id)

SELECT
    session_id,
    user_id,
    session_duration_minutes,
    scroll_count

FROM CTE

WHERE 
    session_duration_minutes > 30
    AND scroll_count >= 5
    AND click_count::decimal / scroll_count < 0.2
    AND purchase_flag = 0

ORDER BY 
    scroll_count DESC,
    session_id