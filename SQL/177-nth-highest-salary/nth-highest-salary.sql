
CREATE FUNCTION getNthHighestSalary(N INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE offsetVal INT;
    SET offsetVal = N -1;

  RETURN (
    SELECT IFNULL(
        (SELECT DISTINCT salary
        FROM Employee
        ORDER BY SALARY DESC
        LIMIT 1 OFFSET offsetVal), 
        NULL)      

  );

END

