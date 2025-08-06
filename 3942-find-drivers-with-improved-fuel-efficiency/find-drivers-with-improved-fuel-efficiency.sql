WITH first_half AS (
SELECT
    driver_id,
    AVG(distance_km/fuel_consumed) AS first_half_avg

FROM trips
WHERE 
    MONTH(trip_date) BETWEEN 1 AND 6
GROUP BY driver_id
),

second_half AS (
SELECT
    driver_id,
    AVG(distance_km/fuel_consumed) AS second_half_avg

FROM trips
WHERE 
    MONTH(trip_date) BETWEEN 7 AND 12
GROUP BY driver_id
),

CTE AS (
SELECT
    d.driver_id,
    d.driver_name,
    ROUND(f.first_half_avg, 2) as first_half_avg,
    ROUND(s.second_half_avg, 2) as second_half_avg,
    ROUND((s.second_half_avg - f.first_half_avg), 2) as efficiency_improvement

FROM drivers d

INNER JOIN first_half f
    ON d.driver_id = f.driver_id

INNER JOIN second_half s
    ON d.driver_id = s.driver_id
    AND f.driver_id = s.driver_id

ORDER BY efficiency_improvement DESC, driver_name ASC)

SELECT * FROM CTE WHERE efficiency_improvement > 0