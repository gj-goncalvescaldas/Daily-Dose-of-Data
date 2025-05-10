WITH maxx AS (
    SELECT 
        product_id,
        MAX(change_date) AS max_change_date
    FROM Products
    WHERE change_date <= '2019-08-16'
    GROUP BY product_id
),
latest_prices AS (
    SELECT 
        p.product_id,
        p.new_price AS price
    FROM Products p
    JOIN maxx m ON p.product_id = m.product_id AND p.change_date = m.max_change_date
),
all_products AS (
    SELECT DISTINCT product_id FROM Products
)

SELECT * FROM latest_prices

UNION ALL

SELECT 
    ap.product_id,
    10 AS price
FROM all_products ap
LEFT JOIN maxx m ON ap.product_id = m.product_id
WHERE m.max_change_date IS NULL;
