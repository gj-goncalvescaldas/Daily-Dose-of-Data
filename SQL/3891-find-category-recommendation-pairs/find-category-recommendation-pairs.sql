WITH UserCategories AS (
    SELECT 
        pp.user_id,
        pi.category
    FROM ProductPurchases pp

    JOIN ProductInfo pi ON pp.product_id = pi.product_id
),

CategoryPairs AS (
    SELECT
        uc.category as category1,
        uc2.category as category2,
        uc.user_id
    FROM UserCategories uc

    JOIN UserCategories uc2 ON uc.user_id = uc2.user_id AND uc.category < uc2.category


),

CustomerCounts AS (
    SELECT 
        category1,
        category2,
        COUNT(DISTINCT user_id) as customer_count

     FROM CategoryPairs
     GROUP BY category1, category2
     HAVING customer_count >= 3
     ORDER BY customer_count DESC, category1 ASC, category2 ASC
)

SELECT * FROM CustomerCounts