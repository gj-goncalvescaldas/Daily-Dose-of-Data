SELECT 
	first_name,
    last_name,
    rn as num_of_duplicates
FROM (
SELECT
	first_name,
    last_name,
    ROW_NUMBER() OVER (PARTITION BY (first_name || last_name)) as rn

FROM patients
)
WHERE
	rn = 2
