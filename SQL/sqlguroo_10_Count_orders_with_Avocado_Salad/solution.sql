SELECT  
  COUNT(DISTINCT order_id) as count

FROM order_details od

JOIN product_detail pd 
  ON od.product_id = pd.product_id
  AND product_name = 'Avocado Salad'