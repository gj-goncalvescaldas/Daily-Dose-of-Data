SELECT
	p.first_name,
    p.last_name,
    pn.province_name
    
FROM patients p

JOIN province_names pn
	ON p.province_id = pn.province_id