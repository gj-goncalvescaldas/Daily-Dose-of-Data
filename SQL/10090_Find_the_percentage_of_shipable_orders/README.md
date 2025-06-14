# 10090_Find_the_percentage_of_shipable_orders

Find the percentage of shipable orders.

An order is considered **shipable** if the customer's address is known (i.e., the address field is not null). You are required to calculate the percentage of such shipable orders among all orders.

You will work with the following two tables:

- **orders**
  - `id`: bigint
  - `cust_id`: bigint
  - `order_date`: date
  - `order_details`: text
  - `total_order_cost`: bigint

- **customers**
  - `id`: bigint
  - `first_name`: text
  - `last_name`: text
  - `phone_number`: text
  - `address`: text
  - `city`: text

Your final output should include a single column:

- `percent_shipable`: The percentage of orders where the customer's address is known.
