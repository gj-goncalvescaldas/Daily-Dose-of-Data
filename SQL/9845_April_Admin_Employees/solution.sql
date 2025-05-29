SELECT
    COUNT(DISTINCT worker_id) AS n_admins
FROM worker

WHERE MONTH(joining_date) >= 4 AND department = "Admin"