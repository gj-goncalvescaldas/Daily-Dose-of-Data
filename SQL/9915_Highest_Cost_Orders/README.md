# 9915_Highest_Cost_Orders

Find the customer with the highest total order cost on any single day between **2019-02-01** and **2019-05-01**. If a customer made multiple orders on the same day, you must **sum the order costs for that day**. The final result should display:

- The customer's **first name**
- The **date** of their highest combined daily order cost
- The **total cost** of their orders for that day

You may assume that each customer's first name is unique.

### Tables:

**customers**  
- `id`: bigint  
- `first_name`: text  
- `last_name`: text  
- `city`: text  
- `address`: text  
- `phone_number`: text  

**orders**  
- `id`: bigint  
- `cust_id`: bigint  
- `order_date`: date  
- `order_details`: text  
- `total_order_cost`: bigint  
