

SELECT
    e.employee_id,
    e.name,
    (SELECT COUNT(*) FROM Employees WHERE reports_to = e.employee_id) as reports_count,
    ROUND((SELECT AVG(age) FROM Employees WHERE reports_to = e.employee_id), 0) as average_age   

FROM Employees e

HAVING reports_count > 0

order by employee_id