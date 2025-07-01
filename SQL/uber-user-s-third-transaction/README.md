# user-s-third-transaction-uber

Assume you are given a table named `transactions` that records Uber transactions made by users. Each row in the table represents a single transaction and includes the `user_id`, the amount `spend`, and the `transaction_date`.

Your task is to write a query that returns the **third transaction** made by **each user**. 

The output should include the following columns:
- `user_id`
- `spend`
- `transaction_date`

### Table: transactions

| Column Name       | Type      |
|-------------------|-----------|
| user_id           | integer   |
| spend             | decimal   |
| transaction_date  | timestamp |

### Example Input

| user_id | spend | transaction_date       |
|---------|--------|------------------------|
| 111     | 100.50 | 01/08/2022 12:00:00    |
| 111     | 55.00  | 01/10/2022 12:00:00    |
| 121     | 36.00  | 01/18/2022 12:00:00    |
| 145     | 24.99  | 01/26/2022 12:00:00    |
| 111     | 89.60  | 02/05/2022 12:00:00    |

### Example Output

| user_id | spend | transaction_date       |
|---------|--------|------------------------|
| 111     | 89.60  | 02/05/2022 12:00:00    |
