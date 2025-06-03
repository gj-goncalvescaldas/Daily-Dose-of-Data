WITH avg_department AS (
SELECT 
    department,
    AVG(salary) as avg_salary
FROM employee
GROUP BY department
)

SELECT
    ad.department,
    e.first_name,
    e.salary,
    ad.avg_salary
FROM employee e
JOIN avg_department ad ON ad.department = e.department