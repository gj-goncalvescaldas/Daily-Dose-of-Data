WITH CTE AS (
SELECT 
  app_id,
  SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END) AS impression_cnt,
  SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) AS click_cnt

FROM events

WHERE EXTRACT(year from timestamp) = 2022

GROUP BY app_id
)

SELECT 
  app_id,
  ROUND(100.0 * click_cnt / impression_cnt, 2) as ctr 

FROM CTE