WITH doctor_admissions AS (
	SELECT
  		attending_doctor_id AS doctor_id,
  		max(admission_date) as last_admission_date,
  		MIN(admission_date) as first_admission_date
 	
  	FROM admissions
  
  	GROUP BY doctor_id
)

SELECT 
	d.doctor_id,
    d.first_name || ' ' || d.last_name as full_name,
	da.first_admission_date,
    da.last_admission_date

FROM doctors d 

JOIN doctor_admissions da 
	ON d.doctor_id = da.doctor_id