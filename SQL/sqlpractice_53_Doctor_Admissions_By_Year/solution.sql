SELECT
    d.doctor_id,
    MAX(d.first_name) || ' ' || MAX(d.last_name) as doctor_name,
    MAX(d.specialty),
    YEAR(admission_date) as selected_year,
    COUNT(*) as total_admissions

FROM doctors d

JOIN admissions a 
	ON a.attending_doctor_id = d.doctor_id
    
group by d.doctor_id, selected_year