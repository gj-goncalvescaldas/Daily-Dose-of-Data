SELECT
	'No' as has_insurance,
    SUM(CASE
    	WHEN patient_id % 2 = 0 THEN 10 
        END) as cost_after_insurance
     

FROM admissions 

UNION 

SELECT
	'Yes' as has_insurance,
    SUM(CASE
    	WHEN patient_id % 2 != 0 THEN 50 
        END) as cost_after_insurance
     

FROM admissions 