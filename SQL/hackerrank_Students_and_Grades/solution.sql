WITH students_grades AS (
    SELECT
        s.id,
        s.name,
        s.marks,
        g.grade
    FROM Students s 
    
    JOIN Grades g 
        ON s.Marks BETWEEN Min_Mark AND Max_Mark
)

SELECT * FROM (
    SELECT
        name,
        grade,
        marks
    FROM students_grades
    WHERE grade >= 8
) t1

UNION ALL 

SELECT * FROM (
    SELECT
        NULL AS NAME,
        grade,
        marks
    FROM students_grades
    WHERE grade < 8

) t2

ORDER BY grade DESC, CASE WHEN grade >= 8 THEN name ELSE marks END