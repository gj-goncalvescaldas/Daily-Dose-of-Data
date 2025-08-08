WITH ranked AS (
    SELECT
        store_id,
        product_name,
        quantity,
        price,
        ROW_NUMBER() OVER (PARTITION BY store_id ORDER BY price DESC) as rn_max,
        ROW_NUMBER() OVER (PARTITION BY store_id ORDER BY price ASC) as rn_min
    FROM inventory
),

final AS (
    SELECT
        store_id,
        COUNT(*) as cnt,
        MAX(CASE WHEN rn_max = 1 THEN product_name END) AS most_exp_product,
        MAX(CASE WHEN rn_max = 1 THEN quantity END) AS most_exp_product_quantity,
        MAX(CASE WHEN rn_min = 1 THEN product_name END) AS cheapest_product,
        MAX(CASE WHEN rn_min = 1 THEN quantity END) AS cheapest_product_quantity
    FROM ranked
    GROUP BY store_id
    HAVING 
        cnt >= 3 
        AND most_exp_product_quantity < cheapest_product_quantity
)

SELECT 
    s.store_id,
    s.store_name,
    s.location,
    f.most_exp_product,
    f.cheapest_product,
    ROUND(f.cheapest_product_quantity / f.most_exp_product_quantity, 2) as imbalance_ratio 

FROM stores s
JOIN final f 
    ON s.store_id = f.store_id

ORDER BY imbalance_ratio DESC, store_name ASC