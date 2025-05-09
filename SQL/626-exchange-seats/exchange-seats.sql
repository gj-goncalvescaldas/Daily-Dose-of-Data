WITH count_info AS (
    SELECT COUNT(*) AS total_count, MAX(id) AS max_id
    FROM Seat
)

SELECT
    CASE 
        WHEN c.total_count % 2 = 1 THEN
            CASE
                WHEN s.id < c.max_id THEN
                    CASE
                        WHEN s.id % 2 = 0 THEN s.id - 1 
                        ELSE s.id + 1
                    END
                ELSE s.id
            END
        ELSE 
            CASE
                WHEN s.id % 2 = 0 THEN s.id - 1 
                ELSE s.id + 1
            END
    END AS id,
    s.student
FROM Seat s
CROSS JOIN count_info c
ORDER BY id;
