  SELECT 
    COUNT(*) as count
  FROM orders

  WHERE 
    payment_method = 'Credit Card'
    AND status = 'processed'
    AND EXTRACT(year from order_date) = 2021