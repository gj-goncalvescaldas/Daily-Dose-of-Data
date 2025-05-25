# 2102_Flags_per_Video

For each video, determine the number of **unique users** who flagged it. A **unique user** is identified by the **combination of their first name and last name**. 

Only include rows where a **flag ID** is present — ignore any entries without a `flag_id`.

## Table: `user_flags`

### Columns:
- `user_firstname` (text): First name of the user
- `user_lastname` (text): Last name of the user
- `video_id` (text): Identifier for the video
- `flag_id` (text): Identifier for the flag (nullable)

### Output:
- `video_id`: ID of the video
- `num_unique_users`: Count of unique users who flagged the video
