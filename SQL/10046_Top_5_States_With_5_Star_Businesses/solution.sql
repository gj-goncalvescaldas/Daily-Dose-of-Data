SELECT
    state,
    SUM(IF(stars= 5, 1, 0)) as n_businesses

FROM yelp_business

GROUP BY state

ORDER BY n_businesses DESC, state

LIMIT 5