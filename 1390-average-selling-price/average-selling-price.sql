WITH CTE AS (
SELECT
    p.product_id,
    us.units * p.price as average_price,
    units
    
FROM Prices p
lEFT JOIN UnitsSold us ON us.product_id = p.product_id AND us.purchase_date BETWEEN p.start_date AND p.end_date
)

SELECT 
    product_id,
    COALESCE(ROUND(SUM(average_price)/SUM(units), 2), 0) as average_price 

FROM CTE
GROUP BY product_id

