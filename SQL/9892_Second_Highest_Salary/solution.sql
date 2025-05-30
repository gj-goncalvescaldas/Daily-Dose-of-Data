WITH CTE AS (
SELECT
    salary, 
    ROW_NUMBER() OVER (ORDER BY salary DESC) as rnk
FROM employee
)
SELECT
    salary
FROM CTE
WHERE rnk = 2 