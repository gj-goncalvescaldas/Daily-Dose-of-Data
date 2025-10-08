SELECT 
	admission_date,
    COUNT(*) AS admission_day,
    COUNT(*) - LAG(COUNT(*)) OVER (ORDER BY admission_date) AS admission_count_change
    


FROM admissions

GROUP BY admission_date