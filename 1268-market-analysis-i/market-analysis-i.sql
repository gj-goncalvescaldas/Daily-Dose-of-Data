WITH CTE AS (
    SELECT O.buyer_id, COALESCE(COUNT(DISTINCT O.order_id), 0) AS orders_in_2019
    FROM Orders O
    WHERE YEAR(O.order_date) = 2019 
    GROUP by O.buyer_id
)

SELECT u.user_id as buyer_id, u.join_date, COALESCE(cte.orders_in_2019, 0) as orders_in_2019
FROM Users U
LEFT JOIN CTE cte ON u.user_id = cte.buyer_id