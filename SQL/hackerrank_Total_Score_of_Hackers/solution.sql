-- sql version 5.7.27

SELECT 
    t.hacker_id,
    h.name,
    SUM(t.max_score) as total_score

FROM (
    SELECT 
        hacker_id,
        challenge_id,
        max(score) as max_score
        
    FROM submissions
    GROUP BY hacker_id, challenge_id
) t 

JOIN hackers h 
    ON t.hacker_id = h.hacker_id

GROUP BY t.hacker_id, h.name 

HAVING total_score != 0
 
ORDER BY total_score DESC, t.hacker_id

