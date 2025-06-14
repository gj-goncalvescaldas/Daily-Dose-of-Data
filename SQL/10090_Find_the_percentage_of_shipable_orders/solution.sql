SELECT
    ROUND(SUM(IF(c.address IS NOT NULL, 1, 0))/COUNT(*) * 100,2) AS percent_shipable
FROM orders o
LEFT JOIN customers c ON c.id = o.cust_id AND c.address is NOT NULL