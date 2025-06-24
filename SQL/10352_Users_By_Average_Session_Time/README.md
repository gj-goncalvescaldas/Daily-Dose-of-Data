# 10352_Users_By_Average_Session_Time

Calculate each user's **average session time**, based on their activity logs.

A **session** is defined as the time difference between a `page_load` and a `page_exit`. Each user can have **only one session per day**.

If multiple `page_load` or `page_exit` events exist for the same day:
- Use the **latest `page_load`**
- Use the **earliest `page_exit`**
- Ensure that the `page_load` is **before** the `page_exit`

Output the following:
- `user_id`
- `avg_session_duration`: average of daily session times for each user

### Table Used:
**facebook_web_log**
- `user_id`: bigint
- `action`: text
- `timestamp`: timestamp
