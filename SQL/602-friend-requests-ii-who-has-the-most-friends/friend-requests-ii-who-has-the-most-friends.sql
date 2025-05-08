/* Primera Solucion

WITH countRequest AS (
    SELECT requester_id as id, COUNT(*) AS num
    FROM RequestAccepted 
    GROUP BY requester_id
),
    countAccepter AS (
    SELECT accepter_id as id, COUNT(*) as num
    FROM RequestAccepted 
    GROUP BY accepter_id

),

all_counts AS (
SELECT id, num FROM countRequest
UNION ALL
SELECT id, num FROM countAccepter
)

SELECT id, SUM(num) AS num
FROM all_counts
GROUP BY id
ORDER BY num DESC
LIMIT 1;

*/

SELECT t1.id, COUNT(*) as num FROM
(
    SELECT requester_id as id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id as id FROM RequestAccepted
    
) t1
GROUP BY t1.id
ORDER BY num DESC
LIMIT 1