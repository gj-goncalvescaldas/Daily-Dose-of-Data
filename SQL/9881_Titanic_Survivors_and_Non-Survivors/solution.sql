SELECT 
    survived,
    SUM(CASE
        WHEN pclass = 1 THEN 1
    END) AS first_class,
    SUM(CASE
        WHEN pclass = 2 THEN 1
    END) AS second_class,
    SUM(CASE
        WHEN pclass = 3 THEN 1
    END) AS third_class
FROM titanic
GROUP BY survived