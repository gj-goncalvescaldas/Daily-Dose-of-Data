# snapchat-sending-vs-opening-snaps

**DataLemur: Snapchat — Sending vs. Opening Snaps**

You are provided with two tables: `activities` and `age_breakdown`. These tables contain information about user activity on Snapchat, including the type of activity and how much time users spend on each.

The `activities` table includes:
- `activity_id` (integer): Unique ID for each activity
- `user_id` (integer): ID of the user
- `activity_type` (string): Type of activity — values include `'send'`, `'open'`, and `'chat'`
- `time_spent` (float): Time spent on the activity
- `activity_date` (datetime): Date and time of the activity

The `age_breakdown` table includes:
- `user_id` (integer): ID of the user
- `age_bucket` (string): Age range of the user (e.g., '21-25', '26-30', '31-35')

Your task is to generate a summary by `age_bucket` showing:
- The percentage of total time spent **sending snaps**
- The percentage of total time spent **opening snaps**

These percentages must be calculated as:
- `send_perc = time_sending / (time_sending + time_opening) * 100.0`
- `open_perc = time_opening / (time_sending + time_opening) * 100.0`

The output should include three columns:
- `age_bucket`
- `send_perc` (rounded to 2 decimal places)
- `open_perc` (rounded to 2 decimal places)

Only activities with types `'send'` and `'open'` are relevant for this analysis.
