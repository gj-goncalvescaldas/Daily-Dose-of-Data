SELECT
    name,
    SUM(t.amount) as balance

FROM Transactions t

JOIN Users u ON u.account = t.account

GROUP BY t.account

HAVING balance > 10000