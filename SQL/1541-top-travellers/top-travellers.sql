SELECT
    u.name,
    COALESCE(SUM(r.distance), 0) as travelled_distance

FROM Rides r

RIGHT JOIN Users u ON u.id = r.user_id 

GROUP BY r.user_id

ORDER BY travelled_distance DESC, name ASC 