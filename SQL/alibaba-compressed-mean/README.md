# alibaba-compressed-mean

**Platform/Source**: Alibaba — Compressed Mean

To analyze ordering behavior, Alibaba tracks how many items are included per order. The goal is to compute the average number of items per order using pre-aggregated data.

**Task:**  
Calculate the mean number of items per order, weighted by the number of orders, and round the result to 1 decimal place.

**Assumptions:**  
- The data is already aggregated: each row represents how many orders had a given item count.
- Round the result to one decimal place.

**Tables:**  
`items_per_order`  
- `item_count` (integer)  
- `order_occurrences` (integer)

**Output:**  
- One column: `mean` (rounded float representing the weighted average)

