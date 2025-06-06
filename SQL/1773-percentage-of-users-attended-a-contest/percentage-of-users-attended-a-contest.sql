SELECT
    contest_id,
    ROUND(
        (COUNT(DISTINCT user_id) / (SELECT COUNT(DISTINCT user_id) FROM Users) * 100)
        , 2) as percentage

FROM Register

GROUP BY contest_id

ORDER BY percentage DESC, contest_id