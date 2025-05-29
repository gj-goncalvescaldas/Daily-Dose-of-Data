SELECT
    business_name,
    CASE
        WHEN business_name REGEXP 'restaur' THEN 'restaurant'
        WHEN business_name REGEXP 'caf|coffee'  THEN 'cafe'
        WHEN business_name REGEXP 'school'  THEN 'school'
        ELSE 'other'
    END AS business_type
    
FROM sf_restaurant_health_violations

GROUP BY business_name