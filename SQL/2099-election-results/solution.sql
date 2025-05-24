WITH CTE AS (
SELECT 
    voter,
    COUNT(*) as cnt
FROM voting_results
GROUP BY voter
),
cte1 AS (
SELECT
    candidate,
    ROUND(SUM(1/cnt), 3) as cnt 

FROM voting_results vr 

JOIN CTE cte ON cte.voter = vr.voter

WHERE candidate != ''

GROUP BY candidate

ORDER BY cnt DESC 
)

SELECT 
    candidate
FROM 
    cte1
WHERE cnt = (SELECT MAX(cnt) FROM cte1)