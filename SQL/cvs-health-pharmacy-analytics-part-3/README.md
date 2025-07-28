# cvs-health-pharmacy-analytics-part-3

**Platform/Source**: CVS Health — Pharmacy Analytics (Part 3)

CVS Health wants to analyze pharmacy sales to assess the performance of different manufacturers.

**Task:**  
Calculate total drug sales for each manufacturer, rounded to the nearest million. Format results as `"$X million"` and sort by sales in descending order. Break ties alphabetically by manufacturer name.

**Assumptions:**  
- Round total sales to the nearest million.
- Format output as `"$X million"` string.
- Sort by descending total sales, then alphabetically by manufacturer.

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
- `sale` (formatted string: "$X million")
