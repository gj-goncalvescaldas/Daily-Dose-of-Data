SELECT
  payment_method,

  CONCAT(
    ROUND(
      100.0 * SUM(CASE WHEN status = 'shipped' THEN 1 ELSE 0 END) / SUM(CASE WHEN status = 'processed' THEN 1 ELSE 0 END),
  2), '%') as concat
  
FROM orders

WHERE status in ('processed', 'shipped')

GROUP BY payment_method