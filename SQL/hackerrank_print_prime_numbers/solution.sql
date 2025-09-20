WITH RECURSIVE numbers AS (
    SELECT 2 AS n
    UNION ALL
    SELECT n + 1 FROM numbers WHERE n + 1 <= 1000
)
SELECT GROUP_CONCAT(n SEPARATOR '&') AS primes
FROM numbers n
WHERE NOT EXISTS (
    SELECT 1 
    FROM numbers d
    WHERE d.n <= FLOOR(SQRT(n.n))
      AND n.n % d.n = 0
      AND d.n > 1
)