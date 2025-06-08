SELECT
  ROUND(
    100.0 * SUM(CASE WHEN clicked = 1 AND search_results_position <= 3 THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS top_3_clicked,
  ROUND(
    100.0 * SUM(CASE WHEN clicked = 0 AND search_results_position <= 3 THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS top_3_notclicked
FROM
  fb_search_events