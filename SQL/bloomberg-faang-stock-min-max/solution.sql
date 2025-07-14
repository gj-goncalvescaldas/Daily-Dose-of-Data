WITH CTE AS (
SELECT
  ticker,
  date,
  open,
  ROW_NUMBER() OVER (PARTITION BY ticker ORDER BY open DESC) as rn

FROM stock_prices
),
min_open AS (
SELECT
  ticker,
  max(rn) as min_rn

FROM CTE

GROUP BY ticker
)

SELECT
  cte.ticker,
  MAX(CASE WHEN cte.rn = 1 THEN TO_CHAR(date, 'Mon-YYYY') ELSE '0.0' END) AS highest_mth,
  MAX(CASE WHEN cte.rn = 1 THEN cte.open ELSE 0.0 END) AS highest_open,
  MAX(CASE WHEN cte.rn = m.min_rn THEN TO_CHAR(date, 'Mon-YYYY') ELSE '0.0' END) AS lowest_mth,
  MAX(CASE WHEN cte.rn = m.min_rn THEN cte.open ELSE 0.0 END) AS lowest_open
  
FROM CTE cte 
JOIN min_open m 
  ON m.ticker = cte.ticker
  
GROUP BY cte.ticker

ORDER BY cte.ticker