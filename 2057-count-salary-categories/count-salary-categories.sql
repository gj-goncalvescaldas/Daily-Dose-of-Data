SELECT
    category,
    COUNT(a.account_id) as accounts_count
FROM
    (SELECT "Low Salary" as category
    UNION ALL
    SELECT "Average Salary"
    UNION ALL
    SELECT "High Salary") as categories
LEFT JOIN Accounts a
    ON (category = "Low Salary" AND income < 20000)
    OR (category = "Average Salary" AND income BETWEEN 20000 AND 50000) 
    OR (category = "High Salary" AND income > 50000)
GROUP BY category 