SELECT
    h.nationality,
    COUNT(DISTINCT u.unit_id) AS apartment_count

FROM airbnb_hosts h

JOIN airbnb_units u ON h.host_id = u.host_id

WHERE h.age < 30

GROUP BY h.nationality

ORDER BY apartment_count DESC
