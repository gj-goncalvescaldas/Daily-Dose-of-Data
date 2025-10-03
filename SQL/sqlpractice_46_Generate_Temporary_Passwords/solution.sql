SELECT 
	p.patient_id,
    ROUND(p.patient_id || length(p.last_name) || YEAR(p.birth_date), 0) as temp_password

FROM patients p 

JOIN admissions a 
	ON a.patient_id = p.patient_id
    
group by p.patient_id
    
ORDER BY p.patient_id