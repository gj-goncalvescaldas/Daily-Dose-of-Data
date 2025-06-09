WITH ordered_tx AS (
SELECT 
    user_id,
    created_at,
    LAG(created_at) OVER (PARTITION BY user_id ORDER BY created_at) as prev_date,
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY created_at) as rn
FROM amazon_transactions
)
SELECT DISTINCT user_id
FROM ordered_tx
WHERE rn = 2
    AND created_at - prev_date <= 7 