WITH CTE AS (

SELECT 
    DATE_FORMAT(created_at, '%Y-%m') as ym,
    SUM(value) as revenue,
    ROW_NUMBER() OVER (ORDER BY created_at ASC) as rn

FROM sf_transactions

GROUP BY ym

ORDER BY ym

)

SELECT 
    ym,
    CASE
        WHEN rn = 1 THEN null
        WHEN rn != 1 THEN ROUND(revenue * 100 / LAG(revenue) OVER (ORDER BY ym) - 100, 2)
    END AS revenue_diff_pct

FROM CTE