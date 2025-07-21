WITH serverstart AS (
SELECT
  server_id,
  status_time as status_time_start,
  ROW_NUMBER() OVER (PARTITION BY server_id ORDER BY status_time ASC) AS rn_start
FROM server_utilization
WHERE session_status = 'start'
),

serverend AS (
SELECT
  server_id,
  status_time as status_time_end,
  ROW_NUMBER() OVER (PARTITION BY server_id ORDER BY status_time ASC) AS rn_end
FROM server_utilization
WHERE session_status = 'stop'

),

joined AS (
SELECT
  s.server_id,
  s.status_time_start,
  e.status_time_end
  
FROM serverstart s
JOIN serverend e 
  ON s.server_id = e.server_id
  AND s.rn_start = e.rn_end
)

SELECT 
  FLOOR(SUM(EXTRACT(EPOCH FROM status_time_end - status_time_start)) / 86400) as total_uptime_days
FROM joined

/*
Function using LEAD 
WITH sessions AS (
  SELECT
    server_id,
    session_status,
    status_time,
    LEAD(session_status) OVER (PARTITION BY server_id ORDER BY status_time) AS next_status,
    LEAD(status_time) OVER (PARTITION BY server_id ORDER BY status_time) AS next_time
  FROM server_utilization
)

SELECT 
  FLOOR(SUM(EXTRACT(EPOCH FROM next_time - status_time)) / 86400) AS total_uptime_days
FROM sessions
WHERE session_status = 'start' AND next_status = 'stop';

*/