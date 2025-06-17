# 9913_Order_Details

Find the order records for customers with the first names **Jill** and **Eva**. You need to output the following details:

- `first_name` of the customer
- `order_date` of each order
- `order_details` (description of the product)
- `total_order_cost` (cost of the order)

Ensure the results are ordered by customer ID in ascending order.

### Tables Used

- **customers**
  - `id`: bigint — Unique identifier for each customer.
  - `first_name`: text — Customer's first name.
  - `last_name`: text — Customer's last name.
  - `address`, `city`, `phone_number`: Additional customer information.

- **orders**
  - `id`: bigint — Unique identifier for each order.
  - `cust_id`: bigint — Links to the customer's `id`.
  - `order_date`: date — Date the order was placed.
  - `order_details`: text — Description of the product.
  - `total_order_cost`: bigint — Cost of the order.

### Requirements

Only include rows where the customer's first name is **Jill** or **Eva**. Sort the output by customer ID in ascending order.
