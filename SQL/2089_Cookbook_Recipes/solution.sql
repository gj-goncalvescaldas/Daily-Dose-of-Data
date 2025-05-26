WITH RECURSIVE pages AS (
  SELECT 0 AS left_page_number
  UNION ALL
  SELECT left_page_number + 2
  FROM pages
  WHERE left_page_number + 2 <= (SELECT MAX(page_number) FROM cookbook_titles)
),


recipes AS (
  SELECT page_number, title FROM cookbook_titles
)

SELECT
  p.left_page_number,
  r1.title AS left_title,
  r2.title AS right_title
FROM pages p
LEFT JOIN recipes r1 ON r1.page_number = p.left_page_number
LEFT JOIN recipes r2 ON r2.page_number = p.left_page_number + 1
ORDER BY p.left_page_number;
