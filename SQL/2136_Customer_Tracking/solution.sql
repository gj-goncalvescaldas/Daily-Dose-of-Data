WITH ordered_events AS (
  SELECT
    cust_id,
    state,
    timestamp,
    ROW_NUMBER() OVER (PARTITION BY cust_id ORDER BY timestamp) AS rn
  FROM cust_tracking
),
paired_sessions AS (
  SELECT
    start.cust_id,
    TIMESTAMPDIFF(SECOND, start.timestamp, end.timestamp) / 3600 AS hour_diff
  FROM ordered_events start
  JOIN ordered_events end
    ON start.cust_id = end.cust_id
   AND start.rn + 1 = end.rn
   AND start.state = 1
   AND end.state = 0
)
SELECT
  cust_id,
  ROUND(SUM(hour_diff), 2) AS hour_diff
FROM paired_sessions
GROUP BY cust_id
ORDER BY cust_id

