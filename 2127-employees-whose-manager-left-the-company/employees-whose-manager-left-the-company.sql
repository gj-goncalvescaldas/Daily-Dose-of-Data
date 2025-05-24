WITH CTE AS (
    SELECT DISTINCT employee_id
    FROM Employees
)

SELECT employee_id

FROM Employees

WHERE salary < 30000 and manager_id NOT IN (SELECT employee_id FROM CTE)

ORDER BY employee_id