WITH CTE AS (
SELECT 
  salary,
  ROW_NUMBER() OVER (ORDER BY salary DESC) as rn
FROM employee 
)

SELECT
  salary
FROM CTE 
WHERE
  rn = 2