WITH CTE AS(
SELECT
  candidate_id,
  SUM(CASE WHEN skill = 'Python' THEN 1 ELSE 0 END) AS py_cnt ,
  SUM(CASE WHEN skill = 'Tableau' THEN 1 ELSE 0 END) AS t_cnt,
  SUM(CASE WHEN skill = 'PostgreSQL' THEN 1 ELSE 0 END) AS p_cnt
  
FROM candidates 

GROUP BY candidate_id
)

SELECT 
  candidate_id
FROM CTE
WHERE 
  py_cnt + t_cnt + p_cnt = 3