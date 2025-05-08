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