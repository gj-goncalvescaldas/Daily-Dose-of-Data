SELECT 
    type,
    ROUND(SUM(IF(processed = 1, 1, 0))/COUNT(type), 2) as processed_rate

FROM facebook_complaints

GROUP BY type 