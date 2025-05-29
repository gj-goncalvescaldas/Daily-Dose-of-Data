SELECT
    department,
    COUNT(DISTINCT worker_id) as n_workers

FROM worker

WHERE joining_date >= '2014-04-01'

GROUP BY department

ORDER BY n_workers DESC