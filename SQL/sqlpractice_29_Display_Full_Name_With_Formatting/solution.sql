SELECT
 	UPPER(last_name) || ',' || LOWER(first_name) as new_name_format

FROM patients

ORDER BY first_name DESC