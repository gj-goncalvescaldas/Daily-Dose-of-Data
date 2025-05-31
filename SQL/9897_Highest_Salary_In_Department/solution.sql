SELECT
    department,
    first_name,
    salary

FROM employee e

WHERE salary = (SELECT MAX(s.salary)
                FROM employee s
                WHERE s.department = e.department)

GROUP BY department