WITH CTE AS (
    SELECT machine_id, process_id, timestamp
    FROM Activity 
    WHERE activity_type = 'Start'
),

CTE1 AS (
    SELECT machine_id, process_id, timestamp
    FROM Activity 
    WHERE activity_type = 'END'
),

CTE2 AS (
    SELECT cte.machine_id, cte.process_id, (cte1.timestamp - cte.timestamp) AS processing_time
    FROM CTE cte 
    JOIN CTE1 cte1 ON cte1.machine_id = cte.machine_id AND cte1.process_id = cte.process_id 
)

SELECT machine_id,
    ROUND(
        (SUM(processing_time)/COUNT(DISTINCT process_id))
        ,3
    ) AS processing_time
 
FROM CTE2

GROUP BY machine_id