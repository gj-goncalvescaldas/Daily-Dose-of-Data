WITH dayy AS 
(SELECT
  measurement_id,
  measurement_value,
  measurement_time,
  date_trunc('day', measurement_time) as measurement_day

FROM measurements

),

rnk AS (
SELECT
  *,
  ROW_NUMBER() OVER (PARTITION BY measurement_day ORDER BY measurement_time ASC)
FROM dayy
)

SELECT 
  measurement_day,
  SUM(CASE WHEN row_number%2 != 0 THEN measurement_value ELSE 0 END) AS odd_sum,
  SUM(CASE WHEN row_number%2 = 0 THEN measurement_value ELSE 0 END) AS even_sum

FROM rnk

GROUP BY measurement_day