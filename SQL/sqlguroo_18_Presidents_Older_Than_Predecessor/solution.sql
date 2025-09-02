SELECT 
  SUM(is_older) as count
FROM (
  SELECT *,
    CASE
      WHEN born < LAG(born) OVER (ORDER BY position)
      THEN 1
      ELSE 0 
    END as is_older
  FROM usa_presidents
) sub
