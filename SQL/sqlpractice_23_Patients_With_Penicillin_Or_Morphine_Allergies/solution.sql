SELECT
	first_name,
    last_name,
    allergies

FROM patients

WHERE
	allergies = "Morphine" 
    OR allergies = "Penicillin"
    
ORDER BY allergies, first_name, last_name