WITH CTE AS (
SELECT 
    customer_id, 
    COUNT(DISTINCT transaction_id) AS total_transactions, 
    MAX(transaction_date) - MIN(transaction_date) + 1 AS total_days, 
    ROUND(COUNT(CASE WHEN transaction_type = 'refund' THEN 1 END) * 100/COUNT(*), 0) as refund_rate 
    
FROM customer_transactions 

GROUP BY customer_id) 

SELECT 
    customer_id 
    
FROM CTE
WHERE 
    total_transactions >= 3
    AND total_days >= 30
    AND refund_rate < 20