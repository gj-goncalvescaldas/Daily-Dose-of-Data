-- mysql 5
SELECT
    hacker_id,
    name 
FROM 
    (SELECT 
        s.hacker_id,
        h.name,
        SUM(flag_score) as total_max_score
    FROM (
        SELECT
            s.submission_id,
            s.hacker_id,
            s.challenge_id,
            s.score as hacker_score,
            c.difficulty_level,
            d.score as max_score,
            if(s.score = d.score, 1, 0) as flag_score
            
        FROM Submissions s 
        
        JOIN Challenges c 
            ON s.challenge_id = c.challenge_id
            
        JOIN Difficulty d 
            ON c.difficulty_level = d.difficulty_level
    ) AS s

    JOIN Hackers h
        ON s.hacker_id = h.hacker_id
        
    GROUP BY s.hacker_id, h.name) s 

WHERE  total_max_score > 1 

ORDER BY total_max_score DESC, hacker_id

    
    