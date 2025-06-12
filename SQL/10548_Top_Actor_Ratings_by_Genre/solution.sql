WITH CTE AS (
SELECT
    actor_name,
    genre,
    COUNT(*) as cnt,
    AVG(movie_rating) as avgg
    
FROM top_actors_rating

GROUP BY actor_name, genre

ORDER BY cnt DESC, avgg DESC
)
SELECT 
    a.actor_name,
    a.genre,
    a.avgg

FROM CTE a
WHERE 
    a.cnt = (SELECT max(cnt) FROM CTE WHERE a.actor_name = actor_name)
    AND a.avgg = (SELECT max(avgg) FROM CTE WHERE a.actor_name = actor_name)
    
ORDER BY avgg DESC

LIMIT 5