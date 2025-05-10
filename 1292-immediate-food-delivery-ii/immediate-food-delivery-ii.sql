WITH f1 AS (
    SELECT
        customer_id,
        MIN(order_date) as first_order
    FROM 
        Delivery
    GROUP BY 
        customer_id
),

CTE AS (
SELECT 
    d.customer_id,
    IF(d.order_date = d.customer_pref_delivery_date, 'immediate', 'scheduled') AS order_status
FROM
    Delivery d
JOIN 
    f1 f1 ON f1.customer_id = d.customer_id AND f1.first_order = d.order_date
)


SELECT 
    ROUND(SUM(order_status = 'immediate') * 100.0 / COUNT(*), 2) AS immediate_percentage
FROM CTE;

/*

select ROUND(AVG(order_date = customer_pref_delivery_date) * 100, 2) as immediate_percentage
from delivery where (customer_id, order_date) IN
(select customer_id, min(order_date) as first_order
from delivery
group by customer_id)
*/