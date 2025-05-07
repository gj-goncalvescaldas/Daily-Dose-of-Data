WITH RANKED AS (
    SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary,
        DENSE_RANK() OVER (PARTITION BY d.id ORDER BY e.salary DESC) as rnk
    FROM Employee e
    JOIN Department d on d.id = e.departmentId
)
SELECT Department, Employee, Salary
FROM RANKED 
WHERE rnk <= 3
ORDER BY Salary desc