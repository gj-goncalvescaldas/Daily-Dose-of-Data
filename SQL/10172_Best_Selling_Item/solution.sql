WITH CTE AS (
SELECT
    MONTH(invoicedate) as month,
    description,
    SUM(unitprice*quantity) as total_paid,
    ROW_NUMBER() OVER (PARTITION BY MONTH(invoicedate) ORDER BY SUM(unitprice*quantity) DESC) AS rn

FROM online_retail

WHERE invoiceno

GROUP BY month, description

ORDER BY month ASC )

SELECT 
    month,
    description,
    total_paid

FROM CTE 
WHERE rn = 1