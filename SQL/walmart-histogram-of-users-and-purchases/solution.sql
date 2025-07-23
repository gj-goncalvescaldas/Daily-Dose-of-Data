SELECT
  u.transaction_date,
  u.user_id,
  COUNT(*) as purchase_count

FROM user_transactions u

WHERE transaction_date = (SELECT max(transaction_date) FROM user_transactions WHERE u.user_id = user_id )

GROUP BY transaction_date, user_id

ORDER BY transaction_date