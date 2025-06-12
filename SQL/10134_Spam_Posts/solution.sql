SELECT
    p.post_date,
    SUM(CASE WHEN p.post_keywords REGEXP 'spam' THEN 1 ELSE 0 END) * 100 / COUNT(*) as spam_share
    
FROM facebook_posts p

JOIN facebook_post_views v ON v.post_id = p.post_id

GROUP BY p.post_date

ORDER BY post_date ASC