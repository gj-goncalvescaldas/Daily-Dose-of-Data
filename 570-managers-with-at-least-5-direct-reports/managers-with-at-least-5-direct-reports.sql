WITH countt AS (
    SELECT managerId, COUNT(*) AS report
    FROM Employee
    GROUP BY managerId
    HAVING COUNT(*) >= 5
)
SELECT e.name 
FROM Employee e
JOIN countt c ON e.id = c.managerId