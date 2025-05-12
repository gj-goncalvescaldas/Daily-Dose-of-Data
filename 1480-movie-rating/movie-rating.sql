WITH CTE AS (
    SELECT mr.user_id, COUNT(*), u.name
    FROM MovieRating mr
    JOIN Users u ON u.user_id = mr.user_id
    GROUP BY mr.user_id
    ORDER BY COUNT(*) DESC, u.name ASC

),

CTE2 AS (
    SELECT mr.movie_id, AVG(rating) as avg_rating, m.title
    FROM MovieRating mr
    JOIN Movies m ON m.movie_id = mr.movie_id
    WHERE mr.created_at BETWEEN '2020-02-01' AND '2020-02-29'
    GROUP BY mr.movie_id    
)

SELECT(SELECT name FROM CTE LIMIT 1) AS results

UNION ALL

SELECT (SELECT title FROM CTE2 ORDER BY avg_rating DESC, title ASC LIMIT 1) as results