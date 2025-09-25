SELECT
	first_name,
    last_name,
    allergies
    
FROM patients

where 
	allergies IS NOT NULL
    AND city = "Hamilton"