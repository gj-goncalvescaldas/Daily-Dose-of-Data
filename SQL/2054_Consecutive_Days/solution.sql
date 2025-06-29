WITH ranked_events AS (
  SELECT
    user_id,
    record_date,
    ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY record_date) AS rn
  FROM sf_events
),
grouped_events AS (
  SELECT
    user_id,
    record_date,
    DATE_SUB(record_date, INTERVAL rn DAY) AS grp
  FROM ranked_events
),
consecutive_groups AS (
  SELECT
    user_id,
    COUNT(*) AS consecutive_days
  FROM grouped_events
  GROUP BY user_id, grp
  HAVING COUNT(*) >= 3
)
SELECT 
    DISTINCT user_id
FROM consecutive_groups