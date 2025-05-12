WITH CTE AS (
    SELECT 
        student_id,
        subject,
        score,
        MIN(exam_date) OVER (PARTITION BY student_id, subject) AS minn,
        MAX(exam_date) OVER (PARTITION BY student_id, subject) AS maxx,
        exam_date

    FROM
        Scores
),
maxx AS (
SELECT
    s.student_id,
    s.subject,
    (
    SELECT score
    FROM CTE c
    WHERE minn = exam_date AND s.student_id = c.student_id AND s.subject = c.subject
    ) as first_score,
    (
    SELECT score
    FROM CTE c
    WHERE maxx = exam_date AND s.student_id = c.student_id AND s.subject = c.subject
    ) as latest_score
FROM Scores s
GROUP BY student_id, subject
)

SELECT student_id, subject, first_score, latest_score
FROM maxx
WHERE first_score < latest_score
ORDER BY student_id ASC, subject ASC