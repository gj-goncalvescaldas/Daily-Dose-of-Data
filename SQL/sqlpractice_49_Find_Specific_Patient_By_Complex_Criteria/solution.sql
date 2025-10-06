SELECT
	*
FROM patients

WHERE 
	first_name LIKE '__%r%'
    AND gender = 'F'
    AND MONTH(birth_date) IN (2, 5, 12)
    AND weight between 60 and 80
    anD patient_id % 2 != 0
    AND city = 'Kingston'