SELECT
    e.location,
    AVG(s.popularity)
    
FROM facebook_hack_survey s

JOIN facebook_employees e ON e.id = s.employee_id

GROUP BY location 