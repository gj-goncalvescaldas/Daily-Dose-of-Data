# walmart-histogram-of-users-and-purchases

**Platform/Source**: Walmart — Histogram of Users and Purchases

Walmart wants to analyze customer activity by identifying how many products users purchased on their most recent transaction date.

**Task:**  
Retrieve each user’s most recent transaction date along with their user ID and the total number of products purchased on that day.

**Assumptions:**  
- The most recent transaction is determined by the `transaction_date`.
- Multiple products can be associated with the same user and date.
- Output must be sorted chronologically by `transaction_date`.

**Tables:**  
`user_transactions`  
- `product_id` (integer)  
- `user_id` (integer)  
- `spend` (decimal)  
- `transaction_date` (timestamp)

**Output:**  
- `transaction_date` (timestamp)  
- `user_id` (integer)  
- `purchase_count` (integer)
