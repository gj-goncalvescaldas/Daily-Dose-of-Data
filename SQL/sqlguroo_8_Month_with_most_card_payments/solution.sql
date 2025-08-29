SELECT 
    EXTRACT(MONTH FROM order_date) AS month
FROM orders
WHERE payment_method IN ('Credit Card', 'Debit Card')
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY COUNT(*) DESC
LIMIT 1