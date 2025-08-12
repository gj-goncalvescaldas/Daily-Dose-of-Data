# 2007_Rank_Variance_Per_Country

**StrataScratch — Rank Variance Per Country**

A social media analytics team wants to identify which countries have seen the greatest improvement in their engagement ranking. By comparing monthly comment totals, they can understand user behaviour changes over time.

**Task:**  
Compare the total number of comments made by users in each country between December 2019 and January 2020. Rank countries for each month by total comments using dense ranking in descending order. Return the countries whose rank improved from December to January.

**Assumptions:**  
- Ranking is **dense** (no rank gaps if ties occur).  
- An “improved rank” means a **lower numerical rank value** in January compared to December (e.g., from 5 → 3).  
- Only comments made within **December 2019** and **January 2020** are considered.  
- Countries without comments in either month are excluded.

**Tables:**  
`fb_comments_count`  
- `created_at` (date) — date the comment was created.  
- `number_of_comments` (bigint) — number of comments made by the user on that date.  
- `user_id` (bigint) — unique identifier of the user.  

`fb_active_users`  
- `country` (text) — user's country.  
- `name` (text) — user's name.  
- `status` (text) — user’s activity status.  
- `user_id` (bigint) — unique identifier of the user.  

**Output:**  
- `country` (text) — country name whose rank improved from December 2019 to January 2020.

