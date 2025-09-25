SELECT
	patient_id,
    first_name

FROM patients

WHERE
	first_name LIKE 's%s'
    AND LENGTH(first_name) >= 6