WITH Ranked AS (
    SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary,
    DENSE_RANK() OVER(PARTITION by d.id ORDER BY e.salary DESC) as rnk
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
)
SELECT Department, Employee, Salary
FROM RANKED 
Where rnk = 1;