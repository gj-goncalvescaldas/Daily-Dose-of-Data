# wayfair-y-on-y-growth-rate

**Platform/Source**: Wayfair — Y-on-Y Growth Rate

You're analyzing user transactions for an e-commerce platform. Your task is to evaluate how spending on products evolves year over year.

**Task:**  
Calculate the year-on-year (YoY) growth rate in total spend for each product. Return the year, product ID, current year’s spend, previous year’s spend, and the YoY growth percentage (rounded to 2 decimals).

**Assumptions:**  
- The year should be extracted from the `transaction_date`.
- Results must be grouped by year and product ID.
- Sort output in ascending order by year.
- If there’s no previous year data, return `NULL` for both `prev_year_spend` and `yoy_rate`.

**Tables:**  
`user_transactions`  
- `transaction_id` (integer)  
- `product_id` (integer)  
- `spend` (decimal)  
- `transaction_date` (datetime)  

**Output:**  
- `year`  
- `product_id`  
- `curr_year_spend`  
- `prev_year_spend`  
- `yoy_rate`
