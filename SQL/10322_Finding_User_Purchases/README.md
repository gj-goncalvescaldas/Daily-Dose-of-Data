## 10322_Finding_User_Purchases

Given a dataset of Amazon transactions, identify returning active users. A returning active user is defined as one who made a second purchase within 7 days of their first purchase. 

You are required to return a list of the `user_id`s who meet this condition.

### Table: amazon_transactions

- **created_at** (date): Date of the transaction
- **id** (bigint): Unique identifier for the transaction
- **item** (text): Item purchased
- **revenue** (bigint): Revenue from the transaction
- **user_id** (bigint): Identifier of the user who made the transaction
