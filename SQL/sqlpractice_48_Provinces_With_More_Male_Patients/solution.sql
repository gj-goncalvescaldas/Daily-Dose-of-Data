WITH male_province AS (
	SELECT
  		pn.province_name,
  		SUM(CASE WHEN p.gender = 'M' THEN 1 ELSE 0 END) as male_count,
  		SUM(CASE WHEN p.gender = 'F' THEN 1 ELSE 0 END) as female_count
  
  	FROM patients p
  
  	JOIN province_names pn
  		ON p.province_id = pn.province_id
  	
  	GROUP BY pn.province_name
  
  	having male_count > female_count
)

SELECT 
	province_name

FROM male_province