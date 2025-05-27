SELECT
    client_id,
    month(time_id),
    COUNT(DISTINCT user_id)

FROM fact_events
GROUP BY client_id, month(time_id)