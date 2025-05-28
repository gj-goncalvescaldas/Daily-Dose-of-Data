# 9909_Highest_Number_Of_Orders

Find the customer who has placed the highest number of orders. You are required to return the ID of this customer along with the total number of orders they have placed.

## Tables

### customers
- **id** (bigint): Unique identifier for each customer.
- **first_name** (text): Customer's first name.
- **last_name** (text): Customer's last name.
- **city** (text): City where the customer resides.
- **address** (text): Customer's address.
- **phone_number** (text): Customer's contact number.

### orders
- **id** (bigint): Unique identifier for each order.
- **cust_id** (bigint): ID of the customer who placed the order.
- **order_date** (date): Date the order was placed.
- **order_details** (text): Details of the order.
- **total_order_cost** (bigint): Total cost of the order.

## Output
- **id**: Customer ID.
- **total_orders**: Number of orders placed by the customer.
