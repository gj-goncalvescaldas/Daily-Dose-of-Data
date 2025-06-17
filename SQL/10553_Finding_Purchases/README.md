# 10553_Finding_Purchases

Identify returning active users by finding those who made a second purchase within 7 days of any previous purchase.

You are given a table `amazon_transactions` containing information about purchases made by users on Amazon. Each record includes the timestamp of the purchase (`created_at`), a unique transaction ID (`id`), the item purchased (`item`), the revenue from that purchase (`revenue`), and the user who made the purchase (`user_id`).

Your task is to output a list of `user_id`s who made at least one second purchase within 7 days after any of their previous purchases.

Table: `amazon_transactions`

Columns:
- `created_at` (date): Timestamp of the purchase.
- `id` (bigint): Unique identifier for each transaction.
- `item` (text): Description of the item purchased.
- `revenue` (bigint): Revenue from the purchase.
- `user_id` (bigint): Identifier of the user who made the purchase.
