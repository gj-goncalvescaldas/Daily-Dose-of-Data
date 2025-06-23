WITH ranked AS (
  SELECT
    policy_num,
    state,
    claim_cost,
    fraud_score,
    PERCENT_RANK() OVER (PARTITION BY state ORDER BY fraud_score) AS pr
  FROM fraud_score
)

SELECT
  policy_num,
  state,
  claim_cost,
  fraud_score
FROM ranked
WHERE pr >= 0.95
ORDER BY state, fraud_score DESC;
