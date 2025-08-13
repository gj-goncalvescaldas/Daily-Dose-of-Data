WITH numbered AS (
SELECT
    *,
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY date_visited ASC) AS rn
FROM user_streaks

WHERE date_visited <= '2022-08-10'

GROUP BY user_id, date_visited
),

streaks AS (
SELECT 
    user_id,
    MIN(date_visited) AS start_date,
    MAX(date_visited) AS end_date,
    COUNT(*) AS streak_length
    
FROM numbered
GROUP BY user_id, DATE_SUB(date_visited, INTERVAL rn DAY)
),

top_lengths AS (
SELECT streak_length
FROM streaks
GROUP BY streak_length
ORDER BY streak_length DESC
LIMIT 3
)

SELECT 
    user_id,
    MAX(streak_length) as streak_length
FROM streaks

WHERE streak_length in (SELECT * FROM top_lengths)

GROUP BY user_id 

ORDER BY streak_length DESC