WITH maroni_weight AS (
SELECT 
  weight
  
FROM patients
  
WHERE last_name = "Maroni"
)

SELECT
	MAX(weight) - MIN(weight) as weight_delta

FROM maroni_weight