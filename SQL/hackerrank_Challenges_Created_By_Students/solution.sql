WITH challenges_count AS (
    SELECT 
        hacker_id,
        COUNT(DISTINCT challenge_id) as challenges_created,
        DENSE_RANK() OVER (ORDER BY COUNT(DISTINCT challenge_id) DESC) AS rn
        
    
    FROM Challenges 
    
    GROUP BY hacker_id
),

challenges_rank AS (
    SELECT
        rn, 
        CASE
            WHEN rn = 1 THEN 1 
            ELSE COUNT(*)
        END as cnt
    
    FROM challenges_count
    GROUP BY rn
),

challenges_clean AS (
    SELECT
         cc.hacker_id,
         cc.challenges_created
    
    FROM challenges_count cc 
    JOIN challenges_rank cr 
        ON cc.rn = cr.rn
    
    WHERE cr.cnt = 1
)

SELECT 
    cc.hacker_id,
    h.name,
    cc.challenges_created
    
FROM challenges_clean cc
JOIN Hackers h 
    ON cc.hacker_id = h.hacker_id
    
ORDER BY cc.challenges_created DESC, hacker_id