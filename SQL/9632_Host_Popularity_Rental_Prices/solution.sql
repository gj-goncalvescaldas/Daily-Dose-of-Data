
SELECT
    CASE 
        WHEN number_of_reviews = 0 THEN "New"
        WHEN number_of_reviews BETWEEN 1 AND 5 THEN "Rising"
        WHEN number_of_reviews BETWEEN 6 AND 15 THEN "Trending Up"
        WHEN number_of_reviews BETWEEN 16 AND 40 THEN "Popular"
        ELSE "Hot"
    END AS host_popularitY,
    min(price),
    avg(price),
    max(price)
FROM airbnb_host_searches

GROUP BY host_popularity
ORDER BY min(price) ASC