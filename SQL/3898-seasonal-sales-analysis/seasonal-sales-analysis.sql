WITH sales_season_category AS (
    SELECT
        CASE 
            WHEN MONTH(sa.sale_date) IN (12, 1, 2) THEN 'Winter'
            WHEN MONTH(sa.sale_date) IN (3, 4, 5) THEN 'Spring'
            WHEN MONTH(sa.sale_date) IN (6, 7, 8) THEN 'Summer'
            WHEN MONTH(sa.sale_date) IN (9, 10, 11) THEN 'Fall'    
        END AS season,
        p.category,
        sa.quantity,
        sa.price
    FROM sales sa

    JOIN products p ON sa.product_id = p.product_id 
), 

category_stats AS (
    SELECT 
        season,
        category,
        SUM(quantity) AS total_quantity,
        SUM(quantity * price) AS total_revenue 

    FROM sales_season_category

    GROUP BY season, category
),

rnk AS (
    SELECT *,
        ROW_NUMBER() OVER (
            PARTITION BY season
            ORDER BY total_quantity DESC, total_revenue DESC
        ) AS rk
    FROM category_stats
)

SELECT 
    season,
    category,
    total_quantity,
    total_revenue
FROM rnk
WHERE rk = 1