SELECT
	ROUND(COUNT(CASE WHEN gender = 'M' THEN 1 END) * 100.0 / COUNT(*), 2) || '%' AS percent_of_male_patients
    
FROM patients