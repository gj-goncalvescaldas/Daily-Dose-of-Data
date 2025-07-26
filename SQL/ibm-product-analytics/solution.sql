WITH queriess AS (
SELECT 
  employee_id,
  COUNT(DISTINCT query_id) as unique_queries
FROM queries
WHERE EXTRACT(month FROM query_starttime) BETWEEN 7 and 9
GROUP BY employee_id

UNION ALL

SELECT 
  employee_id, 
  0 as unique_queries
FROM employees
WHERE employee_id NOT IN (SELECT employee_id FROM queries WHERE EXTRACT(month FROM query_starttime) BETWEEN 7 and 9)
)


SELECT 
  unique_queries,
  COUNT(employee_id) AS employee_count

FROM queriess

GROUP BY unique_queries

ORDER BY unique_queries ASC