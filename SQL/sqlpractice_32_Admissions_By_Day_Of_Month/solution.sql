SELECT
	DAY(admission_date) as day_number,
    COUNT(*) AS number_of_admissions

FROM admissions

GROUP BY day_number

ORDER BY number_of_admissions DESC