WITH admissions_per_doctor AS (
	SELECT
  		attending_doctor_id as doctor_id,
  		COUNT(*) AS admissions_total
  
  	FROM admissions
  
  	GROUP by doctor_id
)

SELECT
	d.first_name,
    d.last_name,
    ad.admissions_total
    

FROM doctors d 
JOIN admissions_per_doctor ad 
	ON d.doctor_id = ad.doctor_id