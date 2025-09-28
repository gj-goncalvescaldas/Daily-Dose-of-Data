SELECT
	first_name,
    last_name,
    birth_date

FROM patients

WHERE 
	YEAR(birth_date) BETWEEN 1970 and 1979
    
ORDER BY birth_date