-- SQL 5
SELECT 
    w.id,
    w.age,
    w.coins_needed,
    w.power
 FROM (
    SELECT
        w.id,
        w.code,
        w.coins_needed,
        w.power,
        wp.age
    
    FROM Wands w 
    
    JOIN Wands_Property wp 
        ON w.code = wp.code 
        AND wp.is_evil = 0
) w
JOIN (
    SELECT
        wp.age,
        w.power,
        MIN(w.coins_needed) as min_coins
    FROM Wands w 
    
    JOIN Wands_Property wp 
        ON w.code = wp.code
        AND wp.is_evil = 0 
        
    GROUP BY wp.age, w.power
) m 
    ON w.age = m.age 
    AND w.power = m.power 
    AND w.coins_needed = m.min_coins
ORDER BY power DESC, age DESC



