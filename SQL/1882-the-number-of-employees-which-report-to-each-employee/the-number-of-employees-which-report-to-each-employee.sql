SELECT
    e.employee_id,
    e.name,
    COUNT(e1.reports_to) AS reports_count,
    ROUND(AVG(e1.age)) AS average_age

FROM Employees e

INNER JOIN Employees e1 ON e1.reports_to = e.employee_id

GROUP BY employee_id

ORDER BY employee_id