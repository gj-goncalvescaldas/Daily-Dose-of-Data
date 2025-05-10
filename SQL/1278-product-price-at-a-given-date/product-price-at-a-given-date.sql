WITH latest_price AS (
    SELECT 
        product_id,
        new_price,
        change_date,
        DENSE_RANK() OVER (PARTITION BY product_id ORDER BY change_date DESC) rnk
    FROM Products
    WHERE 
        change_date <= '2019-08-16'
)

SELECT 
    p.product_id,
    COALESCE(lp.new_price, 10) as price
FROM 
    (SELECT 
        DISTINCT product_id
    FROM 
        Products) p
LEFT JOIN 
    latest_price lp
    ON lp.product_id = p.product_id AND
    lp.rnk = 1