WITH CTE AS (
SELECT
  SUM(CASE WHEN call_category != 'n/a' AND call_category IS NOT NULL THEN 1 ELSE 0 END) AS not_na,
  SUM(CASE WHEN call_category = 'n/a' or call_category is NULL THEN 1 ELSE 0 END) AS na

FROM callers
)

SELECT
  ROUND(na * 100.0  /(not_na+na)
  ,1) as uncategorised_call_pct
FROM CTE