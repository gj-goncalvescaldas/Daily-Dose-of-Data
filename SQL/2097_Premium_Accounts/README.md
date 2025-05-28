# 2097_Premium_Accounts

You are given a dataset named `premium_accounts_by_day`, which logs daily data for each premium account. A premium account appears in the dataset every day it remains premium. However, if an account is temporarily discounted and not actively paying, this is indicated by a `final_price` of 0.

Your task is to focus on the **first 7 available dates** in the dataset and perform the following analysis:

1. For each of these 7 dates, count the number of premium accounts that were actively paying on that specific day (i.e., those with `final_price` > 0).
2. Then, determine how many of these same accounts continue to be premium and are still paying exactly **7 days later**. It does not matter whether they were active during the days in between.

You must return a result with the following three columns:
- `entry_date`: the initial date of the calculation.
- `premium_paid_accounts`: the number of actively paying premium accounts on that date.
- `premium_paid_accounts_after_7d`: the number of those same accounts still premium and paying exactly 7 days later.

**Table:** `premium_accounts_by_day`

**Columns:**
- `account_id` (text): Unique identifier for each premium account.
- `entry_date` (date): The date of the data entry.
- `users_visited_7d` (bigint): Number of users that visited in the last 7 days.
- `final_price` (bigint): Price paid by the user; 0 indicates not actively paying.
- `plan_size` (bigint): Size of the subscription plan.
