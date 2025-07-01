WITH CTE AS (SELECT
  user_id,
  spend,
  transaction_date,
  ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY transaction_date ASC ) AS rn

FROM transactions
)

SELECT
  user_id,
  spend,
  transaction_date
FROM CTE
WHERE rn = 3