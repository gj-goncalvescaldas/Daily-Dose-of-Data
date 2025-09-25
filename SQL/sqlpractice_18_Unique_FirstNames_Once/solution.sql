SELECT
	first_name 
FROM patients
GROUP BY first_name
having COUNT(*) = 1