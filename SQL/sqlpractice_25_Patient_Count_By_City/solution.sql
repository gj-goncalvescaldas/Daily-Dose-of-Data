SELECT
	city,
    COUNT(distinct patient_id) as num_patients

FROM patients

group by city

ORDER BY num_patients DESC, city
