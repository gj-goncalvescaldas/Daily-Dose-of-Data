# 2104_User_with_Most_Approved_Flags

Find the user(s) who flagged the most **distinct videos** that were **approved** by YouTube. The approval status is found in the `flag_review` table through the `reviewed_outcome` column.

You need to:
- Join the `user_flags` table with `flag_review` using `flag_id`.
- Filter for records where `reviewed_outcome` is 'APPROVED'.
- Count the number of **unique** `video_id`s flagged and approved per user.
- Return the full name(s) (first and last name concatenated with a space) of the user(s) with the highest count. If there's a tie, return all such users in a single column.

**Tables:**
- `user_flags`: Contains `user_firstname`, `user_lastname`, `video_id`, `flag_id`
- `flag_review`: Contains `flag_id`, `reviewed_by_yt`, `reviewed_date`, `reviewed_outcome`

**Output:**
- One column: `username`
- Format: First name and last name separated by a space
- Include all top users in case of a tie
