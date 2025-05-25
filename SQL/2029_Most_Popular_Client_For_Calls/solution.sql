WITH CTE AS (
SELECT 
    user_id, 
    COUNT(*) as total
FROM fact_events
GROUP BY user_id
),
CTE2 AS (
SELECT 
    user_id, 
    COUNT(*) as total_list
FROM fact_events
WHERE event_type = 'video call received' OR event_type =  'video call sent'
    OR event_type = 'voice call received' OR event_type =  'voice call sent'
GROUP BY user_id
),
CTE3 AS (
SELECT 
    cte.user_id,
    ROUND(cte2.total_list/cte.total*100,0) as percentage 
FROM CTE cte 
JOIN CTE2 cte2 ON cte2.user_id = cte.user_id
HAVING percentage >= 50
)
SELECT last.client_id FROM (
SELECT 
    fe.client_id,
    count(*) as cnt
FROM fact_events fe
JOIN CTE3 cte3 ON cte3.user_id = fe.user_id
GROUP BY client_id
ORDER BY cnt desc
) last
LIMIT 1;