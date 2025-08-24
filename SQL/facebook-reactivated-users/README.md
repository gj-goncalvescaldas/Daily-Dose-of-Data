# facebook-reactivated-users

**Platform/Source**: Facebook — Reactivated Users  

Facebook’s product team wants to measure user engagement by tracking how many users return to the platform after being inactive. Identifying reactivated users helps assess retention strategies and marketing effectiveness.  

**Task:**  
Write a query to determine the number of reactivated users for each month in 2022. A reactivated user is defined as someone who was inactive in the previous month but logged in during the current month.  

**Assumptions:**  
- The `user_logins` table only contains data for the year 2022, with no missing dates.  
- If a user’s first login in the dataset occurs in 2022, assume they had logged in during 2021, making them a reactivated user.  
- A user may be counted as reactivated multiple times if they meet the criteria in different months.  

**Tables:**  
`user_logins`  
- `user_id` (integer)  
- `login_date` (datetime)  

**Output:**  
- `mth` (integer, month in numerical format)  
- `reactivated_users` (integer, number of reactivated users)  



