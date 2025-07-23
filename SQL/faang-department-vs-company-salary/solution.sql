WITH average_company AS (
  SELECT 
    AVG(amount) AS average_company,
    TO_CHAR(payment_date, 'MM-YYYY') AS payment_date
  FROM salary
  WHERE EXTRACT(month FROM payment_date) = 3
  GROUP BY payment_date
),

average_department AS (
  SELECT
    AVG(salary) AS average_department,
    department_id
  FROM employee
  GROUP BY department_id
)

SELECT 
  d.department_id,
  c.payment_date,
  CASE
    WHEN c.average_company = d.average_department THEN 'same'
    WHEN c.average_company > d.average_department THEN 'lower'
    WHEN c.average_company < d.average_department THEN 'higher'
  END as comparison
FROM average_department d 
CROSS JOIN average_company c;
