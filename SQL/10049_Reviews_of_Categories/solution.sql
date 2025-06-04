WITH RECURSIVE numbers AS (
  SELECT 1 AS n
  UNION ALL
  SELECT n + 1 FROM numbers WHERE n < 15
)

SELECT
 TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(categories, ';', n), ';', -1)) AS category,
 SUM(review_count) AS review_cnt
FROM yelp_business

JOIN numbers ON CHAR_LENGTH(categories) - CHAR_LENGTH(REPLACE(categories, ';', '')) + 1 >= n

GROUP BY category

ORDER BY review_cnt DESC