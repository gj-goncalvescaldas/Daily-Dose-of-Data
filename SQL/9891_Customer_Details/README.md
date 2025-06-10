# 9891_Customer_Details

## Problem Description

You are provided with two tables: `customers` and `orders`. The goal is to retrieve information about each customer, including their first name, last name, and city, along with any order details if available. The result should include all customers, even those who have not placed any orders.

## Output

The output should include the following columns:
- `first_name`
- `last_name`
- `city`
- `order_details`

The result must be sorted in ascending order by `first_name` and then by `order_details`.

## Tables

### customers
- `id` (bigint): Unique ID for each customer
- `first_name` (text): Customer's first name
- `last_name` (text): Customer's last name
- `address` (text): Customer's address
- `city` (text): Customer's city
- `phone_number` (text): Customer's phone number

### orders
- `id` (bigint): Unique ID for each order
- `cust_id` (bigint): Foreign key referencing `customers.id`
- `order_date` (date): Date of the order
- `order_details` (text): Description of the order
- `total_order_cost` (bigint): Cost of the order
