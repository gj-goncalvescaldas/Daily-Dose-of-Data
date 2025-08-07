SELECT DISTINCT
    p.patient_id,
    p.patient_name,
    p.age,
    DATEDIFF(min(c2.test_date), min(c1.test_date)) as recovery_time


FROM patients p

JOIN covid_tests c1 
    ON p.patient_id = c1.patient_id
    AND c1.result = 'Positive'

JOIN covid_tests c2
    ON p.patient_id = c2.patient_id
    AND c2.result = 'Negative'
    AND c2.test_date > c1.test_date 

GROUP BY 1, 2, 3

ORDER BY recovery_time ASC, patient_name ASC

