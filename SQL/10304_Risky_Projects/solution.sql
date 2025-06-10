SELECT
    p.title,
    p.budget,
    CEILING(SUM((DATEDIFF(p.end_date, p.start_date)) * (e.salary/365))) as prorated_employee_expense

    
FROM linkedin_emp_projects ep

JOIN linkedin_projects p 
    ON ep.project_id = p.id
JOIN linkedin_employees e
    ON ep.emp_id = e.id

GROUP BY title

HAVING prorated_employee_expense > budget

ORDER BY title