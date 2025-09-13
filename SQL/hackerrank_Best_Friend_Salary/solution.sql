WITH friends_salary AS (
SELECT
    p1.id,
    s.name,
    p1.salary as salary,
    p2.id as Friend_ID,
    p2.salary as Friend_Salary
    
FROM Students s 

JOIN Friends f 
    ON s.id = f.id
    
JOIN Packages p1
    ON s.id = p1.id 
    
JOIN Packages p2
    ON f.Friend_ID = p2.id
)

SELECT 
   name 
FROM friends_salary 
WHERE 
    Friend_Salary > salary
    
ORDER BY Friend_Salary 