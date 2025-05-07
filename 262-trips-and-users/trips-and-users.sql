SELECT
  t.request_at AS Day,
  ROUND(
    SUM(CASE WHEN t.status IN ('cancelled_by_driver', 'cancelled_by_client') THEN 1 ELSE 0 END) * 1.0
    / COUNT(*), 2
  ) AS 'Cancellation Rate'
FROM Trips t
JOIN Users c ON t.client_id = c.users_id
JOIN Users d ON t.driver_id = d.users_id
WHERE c.banned = 'No' AND c.role = 'client'
  AND d.banned = 'No' AND d.role = 'driver'
  AND t.request_at >= '2013-10-01' AND t.request_at <= '2013-10-03'
GROUP BY t.request_at
ORDER BY t.request_at;
