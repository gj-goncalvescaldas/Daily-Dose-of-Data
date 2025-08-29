SELECT 
  COUNT(*) as count

  
FROM orders

WHERE 
  status = 'processed'
  AND payment_method = 'Debit Card'
  AND total_price > 10
  AND EXTRACT(MONTH from order_date) = 7
  AND EXTRACT(YEAR from order_date) = 2021