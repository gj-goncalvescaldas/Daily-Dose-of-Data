WITH manager AS (
SELECT 
    id as manager_id,
    salary
FROM employee
WHERE id IN (SELECT DISTINCT manager_id FROM employee)
)

SELECT 
    e.first_name,
    e.salary

FROM manager m

JOIN employee e ON e.manager_id = m.manager_id AND e.salary > m.salary