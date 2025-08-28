--more efficient than in where
SELECT 
  SUM(CASE WHEN status='shipped' THEN 1 ELSE 0 END) as count
  
FROM orders 


