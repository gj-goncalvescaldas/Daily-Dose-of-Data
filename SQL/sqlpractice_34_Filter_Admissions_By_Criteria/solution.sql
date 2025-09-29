SELECT
	patient_id,
    attending_doctor_id,
    diagnosis
  
FROM admissions

WHERE 
	(patient_id % 2 != 0 AND attending_doctor_id IN (1,5,19))
    or 
    LENGTH(patient_id) = 3 AND attending_doctor_id LIKE '%2%'