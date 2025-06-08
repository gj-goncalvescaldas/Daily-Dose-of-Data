WITH CTE AS (
SELECT
 d.date,
 u.acc_id,
 u.user_id,
 IF(a.paying_customer = 'yes', 1, 0) as paying_customer,
 d.downloads
FROM ms_user_dimension u
LEFT JOIN ms_acc_dimension a ON a.acc_id = u.acc_id
LEFT JOIN ms_download_facts d ON d.user_id = u.user_id
)

SELECT 
    date,
    SUM(
        CASE
            WHEN paying_customer = 0 THEN downloads ELSE 0
        END 
    ) AS non_paying,
    SUM(
        CASE
            WHEN paying_customer = 1 THEN downloads ELSE 0
        END 
    ) AS paying
FROM CTE

GROUP BY date
HAVING non_paying > paying
ORDER BY date ASC