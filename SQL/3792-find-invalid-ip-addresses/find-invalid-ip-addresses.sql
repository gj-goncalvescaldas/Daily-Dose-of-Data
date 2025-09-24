SELECT
  TRIM(ip) AS ip,
  COUNT(*) AS invalid_count

FROM logs

WHERE TRIM(ip) NOT REGEXP '^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]?|0)\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]?|0)$'

GROUP BY TRIM(ip)

ORDER BY invalid_count DESC, ip DESC;
