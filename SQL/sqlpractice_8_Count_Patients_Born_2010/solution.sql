SELECT
	COUNT(*) as total_patients
    
FROM patients

WHERE
	YEAR(birth_date) = 2010