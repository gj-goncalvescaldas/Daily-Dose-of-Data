SELECT
    v.customer_id,
    COUNT(*) as count_no_trans


FROM Visits v

LEFT JOIN Transactions t 
    ON t.visit_id = v.visit_id

WHERE t.transaction_id IS NULL

GROUP BY v.customer_id

HAVING count_no_trans > 0

ORDER BY count_no_trans ASC

