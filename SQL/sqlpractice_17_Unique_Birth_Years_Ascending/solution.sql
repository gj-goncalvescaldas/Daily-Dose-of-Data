select
	DISTINCT YEAR(birth_date) as birth_year
    
FROM patients

ORDER BY birth_year 