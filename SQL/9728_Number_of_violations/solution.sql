SELECT
    YEAR(inspection_date) as inspection_year,
    SUM(IF(violation_id is not null, 1, 0)) as n_violations

FROM sf_restaurant_health_violations

WHERE business_name = 'Roxanne Cafe'

GROUP BY inspection_year

ORDER BY inspection_year ASC