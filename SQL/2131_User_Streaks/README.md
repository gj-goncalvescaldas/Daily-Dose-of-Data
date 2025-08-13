# 2131_User_Streaks

**StrataScratch — User Streaks**

Understanding user engagement is key for platform growth. Tracking continuous login streaks helps identify highly active users and loyalty patterns.

**Task:**  
Given a table of user visits, find the top 3 users with the longest continuous streak of visiting the platform as of August 10, 2022. Output the user ID and the length of their streak. Include all users in case of ties.

**Assumptions:**  
- A streak is **consecutive days** of visiting the platform.  
- Only visits **up to August 10, 2022** are considered.  
- Ties are allowed; if multiple users share a streak length in the top 3, include all of them.  
- Dates in `date_visited` are unique per user.

**Tables:**  
`user_streaks`  
- `date_visited` (date) — date the user visited the platform.  
- `user_id` (text) — unique identifier of the user.

**Output:**  
- `user_id` (text) — user identifier.  
- `streak_length` (int) — length of the user’s longest continuous streak.



