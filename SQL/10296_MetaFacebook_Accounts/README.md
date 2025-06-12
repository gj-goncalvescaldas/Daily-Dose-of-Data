# 10296_Meta/Facebook_Accounts

Calculate the ratio of Facebook accounts that were closed on **January 10th, 2020** using data from the `fb_account_status` table.

You are provided with a table called `fb_account_status` that contains the following columns:

- `acc_id` (int): The account ID.
- `status` (varchar): The status of the account (e.g., open, closed).
- `status_date` (date): The date when the status was recorded.

Your task is to compute a single value: the ratio of accounts that had a "closed" status on **January 10th, 2020**, relative to all status records on that same day.

Return a single column:
- `closed_ratio` (float): The ratio of closed accounts on January 10th, 2020.
