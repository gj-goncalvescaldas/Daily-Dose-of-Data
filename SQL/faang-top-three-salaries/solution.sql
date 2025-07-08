--Write a query to display the employee's name along with their department name and salary
-- In case of duplicates, sort the results of department name in ascending order, 
--then by salary in descending order
--If multiple employees have the same salary, then order them alphabetically.

WITH rnk AS (
SELECT
  name,
  salary,
  department_id,
  DENSE_RANK() OVER (PARTITION BY department_id ORDER BY salary DESC) AS rnk
FROM employee 
)
SELECT 
  d.department_name,
  r.name,
  r.salary
  
FROM rnk r
JOIN department d 
  ON d.department_id = r.department_id
  
WHERE r.rnk <= 3

ORDER BY d.department_name ASC,  r.rnk, r.name