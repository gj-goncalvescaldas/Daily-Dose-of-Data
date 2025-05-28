# 2119_Most_Lucrative_Products

You are tasked with identifying the 5 most lucrative products, including any ties, based on total revenue generated during the first half of 2022 (January to June inclusive).

The data is stored in the `online_orders` table, which includes the following columns:
- `product_id`: unique identifier for each product.
- `promotion_id`: identifier for the promotion applied.
- `cost_in_dollars`: unit price of the product.
- `customer_id`: identifier for the customer.
- `date_sold`: date the product was sold.
- `units_sold`: number of units sold in the transaction.

You must compute the total revenue per product and return the product IDs alongside their revenue. Revenue is defined as the product of `cost_in_dollars` and `units_sold`. Make sure to include all products that tie within the top 5 total revenues.
