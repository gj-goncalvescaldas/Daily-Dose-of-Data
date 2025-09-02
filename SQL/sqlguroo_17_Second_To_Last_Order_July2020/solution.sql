WITH orders_orded AS (
  SELECT 
    order_date,
    customer_id,
    ROW_NUMBER() OVER (ORDER BY order_date DESC) as rn
  
    
  FROM orders

  WHERE 
    order_date >= '2020-07-01'
    AND order_date < '2020-08-01'
)

SELECT 
  customer_id
  
FROM orders_orded

WHERE rn = 2