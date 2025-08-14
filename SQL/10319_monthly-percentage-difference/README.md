# 10319_monthly-percentage-difference

**StrataScratch: StrataScratch — Monthly Percentage Difference**

Tracking revenue trends month over month is critical for understanding business growth and seasonality. Analyzing percentage changes helps identify spikes or drops in sales.

**Task:**  
Calculate the month-over-month percentage change in revenue. Output the year-month (`YYYY-MM`) and the percentage change, rounded to two decimals, sorted from the start to the end of the year.

**Assumptions:**  
- Percentage change is calculated from the **second month onward** as `((current_month_revenue - previous_month_revenue) / previous_month_revenue) * 100`.  
- Revenue for a month with no transactions is treated as zero.  
- Output should be sorted chronologically by year and month.  

**Tables:**  
`sf_transactions`  
- `created_at` (date) — transaction date.  
- `id` (bigint) — unique transaction record identifier.  
- `purchase_id` (bigint) — purchase identifier.  
- `value` (bigint) — transaction amount.  

**Output:**  
- `ym` (text) — year-month of the transactions (`YYYY-MM`).  
- `revenue_diff_pct` (decimal) — month-over-month revenue percentage change, rounded to 2 decimals.



