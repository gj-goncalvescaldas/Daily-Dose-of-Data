SELECT t1.id, t1.movie, t1.description, t1.rating
FROM (
    SELECT *
    FROM Cinema
    WHERE id%2 = 1
) t1
WHERE t1.description != 'boring'
ORDER BY rating DESC