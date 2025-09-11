WITH date_gaps AS (
    SELECT
        student_id,
        subject,
        session_date,
        hours_studied,

        LAG(session_date) OVER (PARTITION BY student_id ORDER BY session_date) as prev_session_date,

        CASE
            WHEN LAG(session_date) OVER (PARTITION BY student_id ORDER BY session_date) IS NULL 
                THEN 0
            WHEN session_date - LAG(session_date) OVER (PARTITION BY student_id ORDER BY session_date) > 2
                THEN 1 
                ELSE 0
        END AS gap_indicator

    FROM study_sessions
),

consecutive_groups AS (
    SELECT
        *,
        SUM(gap_indicator) OVER (PARTITION BY student_id ORDER BY session_date) AS consecutive_groups

    FROM date_gaps
),

session_sequences AS (
    SELECT 
        *,
        ROW_NUMBER() OVER (PARTITION BY student_id, consecutive_groups ORDER BY session_date) AS session_position

    FROM consecutive_groups
),

spiral_candidates AS (
    SELECT
        student_id,
        consecutive_groups,
        COUNT(*) AS total_sessions,
        COUNT(DISTINCT subject) AS unique_subjects,
        SUM(hours_studied) AS total_hours
    FROM session_sequences
    GROUP BY student_id, consecutive_groups
    HAVING 
        COUNT(DISTINCT SUBJECT) >= 3 
        AND COUNT(*) >= 6
),

pattern_validation AS (
    SELECT
        sc.student_id,
        sc.consecutive_groups,
        sc.unique_subjects AS cycle_length,
        sc.total_hours,
        sc.total_sessions,
        FLOOR(sc.total_sessions / sc.unique_subjects) AS complete_cycles
    FROM  spiral_candidates sc
    WHERE
        sc.total_sessions >= sc.unique_subjects * 2
),
cycle_verification AS (
    SELECT 
        pv.student_id,
        pv.cycle_length,
        pv.total_hours,
        COUNT(CASE
                WHEN ss1.subject = ss2.subject
                THEN 1
            END) as matching_positions

    FROM pattern_validation pv

    JOIN session_sequences ss1
        ON pv.student_id = ss1.student_id
        AND pv.consecutive_groups = ss1.consecutive_groups
        AND ss1.session_position <= pv.cycle_length

    JOIN session_sequences ss2 
        ON pv.student_id = ss2.student_id
        AND pv.consecutive_groups = ss2.consecutive_groups
        AND ss2.session_position = ss1.session_position + pv.cycle_length

    GROUP BY pv.student_id, pv.cycle_length, pv.total_hours
    HAVING 
        COUNT(CASE WHEN ss1.subject = ss2.subject THEN 1 END) = pv.cycle_length
)
SELECT 
    cv.student_id,
    s.student_name,
    s.major,
    cv.cycle_length,
    cv.total_hours as total_study_hours

FROM cycle_verification cv
JOIN students s 
    ON cv.student_id = s.student_id
ORDER BY cv.cycle_length DESC, cv.total_hours DESC