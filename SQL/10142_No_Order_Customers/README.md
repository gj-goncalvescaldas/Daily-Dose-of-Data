# 10142_No_Order_Customers

Identify customers who did not place any orders between **2019-02-01** and **2019-03-01**.

## Requirements

You must include:

- Customers who only placed orders **outside** the specified date range.
- Customers who have **never placed any orders** at all.

## Output

Return the **first names** of the customers.

## Tables

### customers

- `id`: bigint — unique customer ID
- `first_name`: text — customer's first name
- `last_name`: text — customer's last name
- `address`: text
- `city`: text
- `phone_number`: text

### orders

- `id`: bigint — unique order ID
- `cust_id`: bigint — references `customers.id`
- `order_date`: date — when the order was placed
- `order_details`: text
- `total_order_cost`: bigint
