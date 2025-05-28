WITH revenue AS (
SELECT
    product_id,
    SUM(cost_in_dollars * units_sold) AS revenue

FROM online_orders
GROUP BY product_id
order by revenue DESC
)

SELECT 
    *
FROM revenue
LIMIT 5