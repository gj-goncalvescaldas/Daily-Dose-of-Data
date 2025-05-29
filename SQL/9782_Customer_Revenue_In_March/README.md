# 9782_Customer_Revenue_In_March

Calculate the total revenue from each customer in March 2019. Only include customers who were active (i.e., made at least one order) during that month.

You must output:
- The total revenue (`total_order_cost`) per customer for March 2019
- The corresponding `cust_id`

Sort the result by revenue in descending order.

**Table: orders**

| Column Name       | Data Type |
|-------------------|-----------|
| id                | bigint    |
| cust_id           | bigint    |
| order_date        | date      |
| order_details     | text      |
| total_order_cost  | bigint    |
