WITH current_loans AS (
    SELECT 
        book_id,
        COUNT(*) AS current_borrowers
    FROM borrowing_records
    WHERE return_date IS NULL
    GROUP BY book_id
)

SELECT 
    lb.book_id,
    lb.title,
    lb.author,
    lb.genre,
    lb.publication_year,
    cl.current_borrowers
FROM library_books lb
JOIN current_loans cl
    ON lb.book_id = cl.book_id
WHERE lb.total_copies = cl.current_borrowers
ORDER BY cl.current_borrowers DESC, lb.title ASC;
