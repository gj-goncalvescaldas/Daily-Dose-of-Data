WITH first_7_days AS (
SELECT 
    DISTINCT entry_date
FROM premium_accounts_by_day
ORDER BY entry_date ASC 
LIMIT 7
),

initial_accounts AS (
SELECT
    p.account_id,
    p.entry_date
FROM premium_accounts_by_day p
JOIN first_7_days f7 ON f7.entry_date = p.entry_date
WHERE final_price > 0
),
retained_accounts AS (
SELECT
    ia.entry_date AS entry_date,
    ia.account_id
FROM initial_accounts ia
JOIN premium_accounts_by_day p7
    ON p7.account_id = ia.account_id
    AND p7.entry_date = DATE_ADD(ia.entry_date, INTERVAL 7 DAY)
    AND p7.final_price > 0
)
SELECT 
    ia.entry_date,
    COUNT(DISTINCT ia.account_id) AS premium_paid_accounts,
    COUNT(DISTINCT ra.account_id) AS premium_paid_accounts_after_7d

FROM initial_accounts ia
LEFT JOIN retained_accounts ra
    ON ra.account_id = ia.account_id AND ia.entry_date = ra.entry_date
GROUP BY ia.entry_date
ORDER BY ia.entry_date
