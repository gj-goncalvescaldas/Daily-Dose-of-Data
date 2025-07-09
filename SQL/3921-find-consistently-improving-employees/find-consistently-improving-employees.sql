WITH ranked_reviews AS (
    SELECT 
        employee_id,
        review_date,
        rating,
        ROW_NUMBER() OVER (PARTITION BY employee_id ORDER BY review_date DESC) AS rn
    FROM performance_reviews
),
last_3_reviews AS (
    SELECT *
    FROM ranked_reviews
    WHERE rn <= 3
),
reviews_pivoted AS (
    SELECT 
        employee_id,
        MAX(CASE WHEN rn = 1 THEN rating END) AS rating1,
        MAX(CASE WHEN rn = 2 THEN rating END) AS rating2,
        MAX(CASE WHEN rn = 3 THEN rating END) AS rating3
    FROM last_3_reviews
    GROUP BY employee_id
),
improving_employees AS (
    SELECT 
        employee_id,
        (rating1 - rating3) AS improvement_score
    FROM reviews_pivoted
    WHERE rating3 < rating2 AND rating2 < rating1
)
SELECT 
    e.employee_id,
    e.name,
    i.improvement_score
FROM improving_employees i
JOIN employees e ON e.employee_id = i.employee_id
ORDER BY i.improvement_score DESC, e.name ASC
