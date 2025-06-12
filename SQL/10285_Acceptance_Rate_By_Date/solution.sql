SELECT 
    a.date,
    SUM(CASE WHEN b.action = 'accepted' AND a.action = 'sent' THEN 1 ELSE 0 END)/
    SUM(CASE WHEN a.action = 'sent' THEN 1 ELSE 0 END) as cnt
    
FROM fb_friend_requests a

LEFT JOIN fb_friend_requests b 
                        ON a.user_id_sender = b.user_id_sender
                        AND a.user_id_receiver = b.user_id_receiver
                        AND a.action = 'sent'
                        AND b.action = 'accepted'

GROUP BY date

HAVING cnt > 0