# 10288_Clicked_Vs_Non-Clicked_Search_Results

The objective of this problem is to compute two percentages based on user search behavior data from the `fb_search_events` table.

You are required to calculate:

1. The percentage of **all search events** where:
   - The result was **clicked** (`clicked = 1`)
   - The search result was in the **top 3 positions** (`search_results_position <= 3`)

2. The percentage of **all search events** where:
   - The result was **not clicked** (`clicked = 0`)
   - The search result was in the **top 3 positions** (`search_results_position <= 3`)

These two percentages must be returned in a **single row** with two columns:
- `top_3_clicked`
- `top_3_notclicked`

All percentages should be calculated with respect to the **total number of search records** in the table.

**Table: `fb_search_events`**

| Column                  | Type    |
|-------------------------|---------|
| clicked                 | bigint  |
| search_id               | bigint  |
| search_results_position | bigint  |
| search_term             | text    |
