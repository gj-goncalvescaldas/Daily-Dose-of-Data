WITH CTE AS (
    SELECT 
        book_id,
        SUM(
            CASE
                WHEN return_date IS NULL THEN 1
                ELSE 0
            END
        ) as current_borrowers 
    FROM borrowing_records
    GROUP BY book_id
)

SELECT
    l.book_id,
    l.title,
    l.author,
    l.genre,
    l.publication_year,
    cte.current_borrowers 
    
FROM library_books l
JOIN CTE cte 
    ON l.book_id = cte.book_id
    AND l.total_copies = cte.cte.current_borrowers

ORDER BY current_borrowers DESC, title ASC