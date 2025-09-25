SELECT 
	patient_id,
    COUNT(*) as total_admissions

FROM admissions
WHERE 
	patient_id = 579