# microsoft-supercloud-customer

**DataLemur: Microsoft — Supercloud Customer**

A Supercloud customer is defined as a customer who has purchased **at least one product from every product category** listed in the `products` table.

You are given two tables:

### `customer_contracts`
- `customer_id` (integer): ID of the customer
- `product_id` (integer): ID of the purchased product
- `amount` (integer): Amount spent by the customer

### `products`
- `product_id` (integer): ID of the product
- `product_category` (string): Category the product belongs to
- `product_name` (string): Name of the product

Your task is to write a query that identifies all customers who qualify as **Supercloud customers**. Only customers who have purchased from **every unique product category** in the `products` table should be included.

The result should return a single column:
- `customer_id`
