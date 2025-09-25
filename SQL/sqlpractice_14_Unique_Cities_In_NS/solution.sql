SELECT
	distinct(city) AS unique_cities
FROM patients

where 
	province_id = "NS"