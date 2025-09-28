with rn_admissions AS (
	SELECT 
  		*,
  		ROW_NUMBER() OVER (ORDER BY admission_date DESC) as rn
  	FROM admissions
  	WHERE patient_id = 542
)

SELECT
	patient_id,
    admission_date,
    discharge_date,
    diagnosis,
    attending_doctor_id

FROM rn_admissions

WHERE rn = 1
