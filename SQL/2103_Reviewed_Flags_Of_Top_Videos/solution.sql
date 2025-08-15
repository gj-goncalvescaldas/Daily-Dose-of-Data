WITH video_flag AS (
SELECT
    u.video_id,
    SUM(f.reviewed_by_yt) as reviewed_by_yt,
    rank() over(order by count(*) desc) as rnk
    
FROM user_flags u

JOIN flag_review f
    ON u.flag_id = f.flag_id

GROUP BY video_id
)

SELECT
   video_id,
   reviewed_by_yt
   
FROM video_flag
WHERE rnk = 1
