SELECT
    MAX(CASE WHEN d.department = 'marketing' THEN e.salary ELSE 0 END) - 
    MAX(CASE WHEN d.department = 'engineering' THEN e.salary ELSE 0 END) AS salary_difference

FROM db_employee e

JOIN db_dept d ON d.id = e.department_id
