SELECT p.product_name,s.year, s.price
FROM Product p

RIGHT JOIN Sales s ON s.product_id = p.product_id