SELECT
	pn.province_name,
    COUNT(DISTINCT patient_id) as patient_count

FROM patients p 

JOIN province_names pn
	ON p.province_id = pn.province_id
    
GROUP BY province_name

ORDER BY patient_count DESC