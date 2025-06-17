SELECT 
    DISTINCT a1.user_id

FROM amazon_transactions a1
JOIN amazon_transactions a2 
    ON a1.user_id = a2.user_id 
    AND a1.id != a2.id
    AND a2.created_at BETWEEN a1.created_at AND DATE_ADD(a1.created_at, INTERVAL 7 DAY)

