SELECT
    SUM(CASE WHEN status = 'closed' THEN 1 ELSE 0 END) / COUNT(*) AS closed_ratio
FROM fb_account_status
WHERE status_date = '2020-01-10'