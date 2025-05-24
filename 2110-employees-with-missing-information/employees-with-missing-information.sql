SELECT e.employee_id

FROM Employees e

LEFT JOIN Salaries s ON s.employee_id = e.employee_id

WHERE s.employee_id is NULL 

UNION  ALL 

SELECT s.employee_id

FROM Employees e

RIGHT JOIN Salaries s ON s.employee_id = e.employee_id

WHERE e.employee_id is NULL

ORDER BY employee_id