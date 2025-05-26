
WITH minn AS (
SELECT
    user_id,
    min(created_at) as first_day,
    product_id

FROM marketing_campaign

GROUP BY user_id
)

SELECT 
    COUNT(DISTINCT mc.user_id)

FROM marketing_campaign mc
JOIN minn cte ON cte.user_id = mc.user_id

WHERE mc.created_at >  cte.first_day AND mc.product_id != cte.product_id 