SELECT
 	province_id,
    SUM(height) as sum_height

FROM patients

group by province_id

having sum_height >= 7000