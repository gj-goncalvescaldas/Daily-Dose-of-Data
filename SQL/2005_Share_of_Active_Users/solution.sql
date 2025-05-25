WITH CTE AS (
    SELECT 
        COUNT(*) AS num_users
    FROM fb_active_users
)

SELECT
    ROUND(COUNT(*)/(SELECT num_users FROM CTE) * 100, 2) AS us_active_share
FROM fb_active_users
WHERE status = 'open' and country = 'usa'