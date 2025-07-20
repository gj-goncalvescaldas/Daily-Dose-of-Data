SELECT COUNT(*)
FROM transactions t2
WHERE EXISTS (
  SELECT 1
  FROM transactions t1
  WHERE 
    t1.transaction_id != t2.transaction_id
    AND t1.merchant_id = t2.merchant_id
    AND t1.credit_card_id = t2.credit_card_id
    AND t1.amount = t2.amount
    AND t1.transaction_timestamp < t2.transaction_timestamp
    AND t2.transaction_timestamp - t1.transaction_timestamp <= INTERVAL '10 minutes'
)
