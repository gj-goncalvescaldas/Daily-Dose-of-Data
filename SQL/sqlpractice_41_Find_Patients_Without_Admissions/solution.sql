with admissions_id AS (
	SELECT
 		distinct patient_id
  	FROM admissions
)

SELECT
	p.patient_id,
    p.first_name,
    p.last_name
FROM patients p
WHERE p.patient_id NOT IN (SELECT * FROM admissions_id)