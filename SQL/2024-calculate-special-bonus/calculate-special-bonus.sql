SELECT
    e.employee_id,
    CASE
        WHEN e.employee_id % 2 != 0 AND e.name NOT REGEXP '^M' THEN e.salary
        ELSE 0
    END AS bonus 

FROM Employees e

ORDER BY employee_id
