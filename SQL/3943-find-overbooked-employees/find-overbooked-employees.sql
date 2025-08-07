WITH meeting_weeks AS (
  SELECT
    m.employee_id,
    YEARWEEK(m.meeting_date, 1) AS year_week,
    SUM(m.duration_hours) AS total_hours
  FROM meetings m
  GROUP BY m.employee_id, YEARWEEK(m.meeting_date, 1)
),
heavy_weeks AS (
  SELECT
    employee_id,
    COUNT(*) AS meeting_heavy_weeks
  FROM meeting_weeks
  WHERE total_hours > 20
  GROUP BY employee_id
  HAVING meeting_heavy_weeks >= 2
)
SELECT
  e.employee_id,
  e.employee_name,
  e.department,
  hw.meeting_heavy_weeks
FROM heavy_weeks hw
JOIN employees e ON e.employee_id = hw.employee_id
ORDER BY hw.meeting_heavy_weeks DESC, e.employee_name ASC;
