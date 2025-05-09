SELECT 
COALESCE((
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING Count(*) = 1
    ORDER BY num desc
    LIMIT 1)
, NULL) AS num;