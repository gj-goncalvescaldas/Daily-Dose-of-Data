WITH CTE AS (
SELECT 
    host_id,
    COUNT(distinct unit_id) AS apartment_count

FROM airbnb_units

WHERE 
    unit_type = 'Apartment'
    
GROUP BY 1)

SELECT 
    nationality,
    apartment_count

FROM CTE u

JOIN airbnb_hosts h
    ON u.host_id = h.host_id
    AND h.age < 30
    
GROUP BY 1