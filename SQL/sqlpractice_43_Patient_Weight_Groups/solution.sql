SELECT
	COUNT(*) as patients_in_group,
    FLOOR(weight / 10) * 10 as weight_group
    
FROM patients

GROUP BY weight_group

ORDER BY weight_group DESC 