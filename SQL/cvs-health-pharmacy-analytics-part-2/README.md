# cvs-health-pharmacy-analytics-part-2

**Platform/Source**: CVS Health — Pharmacy Analytics (Part 2)

CVS Health is analyzing the performance of its pharmacy products to identify which manufacturers are linked to drugs that have incurred losses.

**Task:**  
Identify manufacturers whose drugs resulted in financial losses and calculate:  
- the number of drugs with losses  
- the total amount of losses (in absolute value)  

**Assumptions:**  
- A loss occurs when `total_sales < cogs`  
- Each drug is made by only one manufacturer  
- Loss = `cogs - total_sales`  
- Losses should be presented in absolute terms  
- Output should be sorted by `total_loss` in descending order

**Tables:**  
`pharmacy_sales`  
- `product_id` (integer)  
- `units_sold` (integer)  
- `total_sales` (decimal)  
- `cogs` (decimal)  
- `manufacturer` (varchar)  
- `drug` (varchar)  

**Output:**  
- `manufacturer`  
- `drug_count`  
- `total_loss`
