# stripe-repeated-payments

**DataLemur: Stripe — Repeated Payments**

Sometimes, payment transactions are repeated by accident; this could be due to user error, API failure, or a retry error that causes a credit card to be charged twice.

**Task:**  
Using the `transactions` table, identify any payments made at the same merchant with the same credit card for the same amount within 10 minutes of each other. Count such repeated payments.

**Assumptions:**  
- The first transaction of such payments should **not** be counted as a repeated payment.  
- If there are two transactions that meet the condition, only the second one is considered repeated.

**Table:**  

`transactions`  
- `transaction_id` (integer)  
- `merchant_id` (integer)  
- `credit_card_id` (integer)  
- `amount` (integer)  
- `transaction_timestamp` (datetime)  

**Output:**  
- One column: `payment_count`
