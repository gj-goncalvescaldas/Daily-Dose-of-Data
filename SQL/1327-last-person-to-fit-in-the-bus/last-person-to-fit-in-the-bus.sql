WITH CTE AS (
    SELECT
        person_name, 
        turn,
        weight,
        SUM(weight) OVER (ORDER BY turn ASC) as current_weight
    FROM
        Queue
    ORDER BY turn ASC
)
SELECT 
    person_name
FROM 
    CTE
WHERE 
    current_weight <= 1000
ORDER BY
    current_weight DESC
LIMIT 1