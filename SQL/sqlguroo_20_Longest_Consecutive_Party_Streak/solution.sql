WITH usa_presidents_reduced AS (
  SELECT 
    position,
    name,
    party,
    term_start,
    years_in_office
  FROM usa_presidents
),
blocks AS (
SELECT 
  *,
  CASE
    WHEN party = LAG(party) OVER (ORDER BY position) 
    THEN 0
    ELSE 1
  END as new_block

FROM usa_presidents_reduced
),
block_ide AS (
  SELECT
    *,
    SUM(new_block) OVER (ORDER BY position) as block_id

  FROM blocks
),

most_y AS (
  SELECT
    block_id,
    SUM(years_in_office) AS totaly

  FROM block_ide
  
  GROUP BY block_id
  ORDER BY totaly desc
  LIMIT 1
)

SELECT 
  position,
  name,
  term_start
  
FROM block_ide bi
JOIN most_y my 
  ON bi.block_id = my.block_id