SELECT
	allergies,
    COUNT(*) as total_diagnosis

FROM patients

WHERE 
	allergies is NOT NULL 
    
group by allergies

ORDER BY total_diagnosis desc