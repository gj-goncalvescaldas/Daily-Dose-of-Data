WITH RECURSIVE leadership AS (
    SELECT
        manager_id, 
        employee_id, 
        employee_name, 
        salary, 
        1 as level
    FROM Employees
    WHERE
        manager_id is NULL

    UNION ALL

    SELECT
        e.manager_id, 
        e.employee_id, 
        e.employee_name, 
        e.salary,
        l.level + 1 as level

    FROM Employees e
    JOIN leadership l
        ON e.manager_id = l.employee_id
  
),
subordinate AS (
    SELECT
        employee_id,
        salary,
        manager_id

    FROM Employees

    UNION ALL

    SELECT
        e.employee_id,
        e.salary,
        s.manager_id

    FROM Employees e
    JOIN subordinate s
        ON s.employee_id = e.manager_id
),
final AS (
    SELECT
        l.employee_id,
        l.employee_name,
        l.level,
        COUNT(s.employee_id) as team_size,
        coalesce(sum(s.salary),0) + l.salary as budget
    FROM leadership l
    LEFT JOIN subordinate s
        ON s.manager_id = l.employee_id

    GROUP BY 1,2,3, l.salary
)

SELECT *
FROM final
ORDER BY 3, 5 desc,2