WITH latest AS 
(SELECT
    a.actor_name,
    a.release_date as latest_date,
    a.film_rating as latest_rating
FROM actor_rating_shift a 
WHERE a.release_date = 
      (SELECT max(release_date)
       FROM actor_rating_shift
       WHERE a.actor_name = actor_name
       GROUP BY actor_name)
),

avg_rating AS (
SELECT
   l.actor_name,
   AVG(a.film_rating) as avg_rating,
   l.latest_rating
FROM latest l
LEFT JOIN actor_rating_shift a
    ON l.actor_name = a.actor_name
    AND a.release_date < l.latest_date
GROUP BY actor_name, l.latest_rating
)

SELECT 
    actor_name,
    COALESCE(avg_rating, latest_rating) AS avg_rating,
    latest_rating,
    (latest_rating - COALESCE(avg_rating, latest_rating)) AS rating_difference
FROM avg_rating
ORDER BY actor_name;
