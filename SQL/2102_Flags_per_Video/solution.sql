SELECT 
    video_id,
    COUNT(DISTINCT CONCAT(IFNULL(user_firstname, ''), '|', IFNULL(user_lastname, ''))) as num_unique_users

FROM user_flags

WHERE flag_id is NOT NULL 

GROUP BY video_id

ORDER BY video_id