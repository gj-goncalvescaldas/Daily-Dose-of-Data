WITH reading_sessions1 AS (
    SELECT
        book_id,
        COUNT(*) AS reading_sessions,
        SUM(IF(session_rating >= 4, 1, 0)) as goodrates,
        SUM(IF(session_rating <= 2, 1, 0)) as badrates,
        MAX(session_rating) as max_session_rating,
        MIN(session_rating) as min_session_rating

    FROM reading_sessions 
    
    GROUP BY book_id

    HAVING 
        reading_sessions >= 5
        AND goodrates > 0
        AND badrates > 0
)

SELECT 
    b.book_id,
    b.title,
    b.author,
    b.genre,
    b.pages,
    (max_session_rating - min_session_rating) as rating_spread,
    ROUND((goodrates + badrates) / reading_sessions, 2) as polarization_score 

FROM books b

JOIN reading_sessions1 rs
    ON rs.book_id = b.book_id

WHERE (rs.goodrates + rs.badrates) / rs.reading_sessions >= 0.6

ORDER BY polarization_score DESC, title DESC