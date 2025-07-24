# amazon-average-review-ratings

**Platform/Source**: Amazon — Average Review Ratings**

A retail platform wants to analyze product performance by reviewing average customer feedback over time.

**Task:**  
Calculate the average star rating per product for each calendar month. Round the average to two decimal places.

**Assumptions:**  
- Group results by month (as a number) and product.  
- Sort results by month, then by product ID.

**Tables:**  
`reviews`  
- `review_id` (integer)  
- `user_id` (integer)  
- `submit_date` (datetime)  
- `product_id` (integer)  
- `stars` (integer)

**Output:**  
- `mth` (integer) — month number extracted from `submit_date`  
- `product` (integer) — `product_id`  
- `avg_stars` (decimal rounded to 2 decimal places)
