SELECT
	first_name,
    last_name,
    height

FROM patients 

WHERE height = (SELECT MAX(height) FROM patients)