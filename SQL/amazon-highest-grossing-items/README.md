\# amazon-highest-grossing-items



\*\*DataLemur: Amazon — Highest-Grossing Items\*\*



You are given a table `product\_spend` that contains information about customer purchases on Amazon, including product category, name, spend, and transaction date.



The table `product\_spend` contains:

\- `category` (string): Product category

\- `product` (string): Product name

\- `user\_id` (integer): ID of the customer

\- `spend` (decimal): Amount spent on the product

\- `transaction\_date` (timestamp): Date of the transaction



Your task is to identify the \*\*top two highest-grossing products\*\* within \*\*each category\*\* in the year \*\*2022\*\*. Grossing is based on the \*\*total spend\*\* on a product.



The output should include:

\- `category`

\- `product`

\- `total\_spend` (sum of all spend values for the product in 2022)



Only transactions from the year 2022 should be considered.



