WITH CTE AS 
(SELECT 
city,
SUM(CASE 
    WHEN amenities IS NULL OR amenities = '{}' THEN 0
    ELSE LENGTH(amenities) - LENGTH(REPLACE(amenities, ",", "")) + 1 
END)
AS amenities

FROM airbnb_search_details 

GROUP BY city
ORDER BY amenities DESC 
)
SELECT city FROM CTE limit 1