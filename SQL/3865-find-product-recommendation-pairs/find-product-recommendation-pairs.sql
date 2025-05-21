
    SELECT 
        pp3.product_id as product1_id,
        pp4.product_id as product2_id,
        pi1.category as product1_category,
        pi2.category as product2_category,
        COUNT(DISTINCT pp3.user_id) as customer_count 
    FROM ProductPurchases pp3

    JOIN ProductPurchases pp4 ON pp3.user_id = pp4.user_id AND pp3.product_id < pp4.product_id

    JOIN ProductInfo pi1  
    ON pp3.product_id = pi1.product_id

    JOIN ProductInfo pi2  
    ON pp4.product_id = pi2.product_id

    GROUP BY  pp3.product_id, pp4.product_id

    HAVING customer_count > 2

    ORDER BY customer_count DESC, product1_id ASC, product2_id ASC

