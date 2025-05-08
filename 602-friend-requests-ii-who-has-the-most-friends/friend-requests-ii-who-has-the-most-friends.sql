SELECT t1.id, COUNT(*) as num FROM
(
    SELECT requester_id as id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id as id FROM RequestAccepted
    
) t1
GROUP BY t1.id
ORDER BY num DESC
LIMIT 1