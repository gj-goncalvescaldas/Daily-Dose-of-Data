WITH approved AS (
SELECT flag_id 
FROM flag_review
WHERE reviewed_outcome = "APPROVED"
),

user_video_flags as (
SELECT
    CONCAT(IFNULL(uf.user_firstname,''), ' ', IFNULL(uf.user_lastname, '')) as username,
    COUNT(DISTINCT uf.video_id) as cnt 
FROM user_flags uf
JOIN approved a ON 
                a.flag_id = uf.flag_id
GROUP BY username 
)


SELECT 
    username
FROM user_video_flags
WHERE cnt = (SELECT max(cnt) FROM user_video_flags)

