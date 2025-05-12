SELECT 
    s.user_id, 
    ROUND(AVG(IF(c.action = "confirmed", 1, 0)),2) as confirmation_rate
FROM Confirmations c
RIGHT JOIN Signups s ON s.user_id = c.user_id
GROUP BY user_id