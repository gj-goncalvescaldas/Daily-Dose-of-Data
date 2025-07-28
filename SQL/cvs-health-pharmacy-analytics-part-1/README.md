# cvs-health-pharmacy-analytics-part-1

**Platform/Source**: CVS Health — Pharmacy Analytics (Part 1)

CVS Health wants to understand which drugs are bringing the highest profits from their pharmacy sales. Each drug is uniquely associated with a single manufacturer.

**Task:**  
Identify the top 3 most profitable drugs based on the difference between total sales and cost of goods sold. Order the results from highest to lowest profit.

**Assumptions:**  
- Total Profit = Total Sales − Cost of Goods Sold  
- There are no ties in profit values  
- Each drug is linked to one manufacturer only

**Tables:**  
`pharmacy_sales`  
- `product_id` (integer)  
- `units_sold` (integer)  
- `total_sales` (decimal)  
- `cogs` (decimal)  
- `manufacturer` (varchar)  
- `drug` (varchar)  

**Output:**  
- `drug`  
- `total_profit`
