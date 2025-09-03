WITH
  ExpandedOccupations AS (
    
    SELECT
      position,
      TRIM(occupation) AS single_occupation,
      years_in_office
    FROM usa_presidents
    WHERE occupation NOT LIKE '%,%'
    UNION ALL
    
    SELECT
      position,
      TRIM(SUBSTRING(occupation, 1, POSITION(',' IN occupation) - 1)) AS single_occupation,
      years_in_office
    FROM usa_presidents
    WHERE occupation LIKE '%,%'
    UNION ALL
    
    SELECT
      position,
      TRIM(SUBSTRING(occupation, POSITION(',' IN occupation) + 1)) AS single_occupation,
      years_in_office
    FROM usa_presidents
    WHERE occupation LIKE '%,%'
  ),
  RankedOccupations AS (
    SELECT
      single_occupation,
      COUNT(position) AS president_count,
      SUM(years_in_office) AS total_years_for_occupation,
      RANK() OVER (ORDER BY COUNT(position) DESC, SUM(years_in_office) DESC) AS rank
    FROM ExpandedOccupations
    GROUP BY
      single_occupation
  )
SELECT
  T1.name
FROM usa_presidents AS T1
JOIN RankedOccupations AS T2
  ON T1.occupation LIKE '%' || T2.single_occupation || '%'
WHERE
  T1.position = 3 AND T2.rank = 2