WITH invalid_logs AS (
    SELECT
        ip,
        CASE

            -- Has less or more than 4 octets
            WHEN ip NOT REGEXP '^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]?|0)\\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9][0-9]?|0)$' THEN 1

            -- Has leading zeros in any octet (like 01.02.03.04)
            WHEN ip REGEXP '(^|\\.)0[0-9]+' THEN 1

            -- Contains numbers greater than 255 in any octet
            WHEN CAST(SUBSTRING_INDEX(ip, '.', 1) AS UNSIGNED) > 255
              OR CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 2), '.', -1) AS UNSIGNED) > 255
              OR CAST(SUBSTRING_INDEX(SUBSTRING_INDEX(ip, '.', 3), '.', -1) AS UNSIGNED) > 255
              OR CAST(SUBSTRING_INDEX(ip, '.', -1) AS UNSIGNED) > 255
            THEN 1

            ELSE 0
        END AS is_invalid
    
    FROM logs

)

SELECT 
    ip,
    SUM(is_invalid) as invalid_count

FROM invalid_logs
WHERE is_invalid = 1
GROUP BY ip
ORDER BY invalid_count DESC, ip DESC