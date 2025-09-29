SELECT 
	first_name || ' ' || last_name as patient_name,
    ROUND(height / 30.48, 1) AS height,
    ROUND(weight * 2.205, 0) AS weight,
    birth_date,
    CASE 
    	WHEN gender = 'M' THEN 'MALE'
        ELSE 'FEMALE'
    END AS gender

FROM patients