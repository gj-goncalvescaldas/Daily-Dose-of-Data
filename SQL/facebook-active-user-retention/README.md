# facebook-active-user-retention

**Platform/Source**: Facebook — Active User Retention

Facebook tracks user engagement through various actions. Understanding which users remain active month-over-month helps assess product stickiness and user loyalty.

**Task:**  
Write a query to find the number of monthly active users (MAUs) for July 2022. A user is considered active if they performed actions such as 'sign-in', 'like', or 'comment' in both July and June 2022.

**Assumptions:**  
- Only include users active in both July and the previous month (June).
- Output month should be in numeric format (e.g., `7` for July).

**Tables:**  
`user_actions`  
- `user_id` (integer)  
- `event_id` (integer)  
- `event_type` (string)  
- `event_date` (datetime)

**Output:**  
- `month` (integer)  
- `monthly_active_users` (integer)



