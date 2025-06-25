WITH page_times AS (

    SELECT
        user_id,
        DATE(timestamp) AS session_date,
        MAX(CASE WHEN action = 'page_load' THEN timestamp END) as latest_page_load,
        MAX(CASE WHEN action = 'page_exit' THEN timestamp END) as earliest_page_exit
    
    FROM facebook_web_log
    
    WHERE action IN ('page_load', 'page_exit')
    GROUP BY user_id, DATE(timestamp)
    
),

valid_session AS (
    SELECT 
        user_id,
        TIMESTAMPDIFF(SECOND, latest_page_load, earliest_page_exit) as session_duration
    FROM page_times
    WHERE latest_page_load < earliest_page_exit
)

SELECT 
    user_id,
    AVG(session_duration) AS avf_session_duration
FROM valid_session
GROUP BY user_id