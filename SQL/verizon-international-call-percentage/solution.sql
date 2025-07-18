WITH CTE AS (
SELECT 
  c.caller_id,
  c.receiver_id,
  i1.country_id AS caller_country,
  i2.country_id AS receiver_country

FROM phone_calls c 

JOIN phone_info i1 ON  
  c.caller_id = i1.caller_id
JOIN phone_info i2 ON
  c.receiver_id = i2.caller_id
)

SELECT
  ROUND(SUM(CASE WHEN caller_country != receiver_country THEN 1 ELSE 0 END) * 100.0  / COUNT(*), 1) as international_calls_pct
FROM CTE 