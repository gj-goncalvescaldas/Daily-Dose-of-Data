SELECT
    s.student_id,
    s.student_name AS student_name,
    sj.subject_name AS subject_name,
    COUNT(e.student_id) as attended_exams

FROM Students s

RIGHT JOIN Subjects sj ON 1=1

LEFT JOIN Examinations e ON sj.subject_name = e.subject_name AND e.student_id = s.student_id

GROUP BY s.student_id, sj.subject_name

HAVING student_id > 0

ORDER BY s.student_id, sj.subject_name