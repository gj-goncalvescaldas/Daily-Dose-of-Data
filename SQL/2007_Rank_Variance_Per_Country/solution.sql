WITH fb_comments_restricted AS (
SELECT *
FROM fb_comments_count
WHERE 
    created_at >= '2019-12-01' 
    AND created_at < '2020-01-31'
),

country AS (
SELECT
    fb.*,
    u.country

FROM fb_comments_restricted fb

JOIN fb_active_users u 
    ON fb.user_id = u.user_id
),

rnk AS
(SELECT 
    country,
    MONTH(created_at) as month ,
    SUM(number_of_comments) as comments,
    DENSE_RANK() OVER(
        PARTITION BY MONTH(created_at)
        ORDER BY SUM(number_of_comments) DESC
    ) AS rank_in_month

FROM country

GROUP BY country, MONTH(created_at)

ORDER BY month DESC)

SELECT jan.country
FROM rnk jan
JOIN rnk decc
    ON jan.country = decc.country
    AND jan.month = 1
    AND decc.month = 12
    AND jan.rank_in_month < decc.rank_in_month


    