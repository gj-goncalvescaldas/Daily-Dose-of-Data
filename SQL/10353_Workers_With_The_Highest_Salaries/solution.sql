SELECT
    t.worker_title

FROM worker w

JOIN title t ON t.worker_ref_id = w.worker_id

WHERE w.salary = (SELECT max(salary) FROM worker)

