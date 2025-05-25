# 2104_User_with_Most_Approved_Flags

Identify the user(s) who flagged the most **distinct** videos that were later **approved** by YouTube. The final output should include **only the full name(s)** of the user(s), with a **space between first and last name**, and should be returned in **a single column**. In case of a tie, list all relevant users.

You are provided with the following tables:

- `user_flags`: Contains user information and the video each user flagged.
  - `user_firstname` (text)
  - `user_lastname` (text)
  - `video_id` (text)
  - `flag_id` (text)

- `flag_review`: Contains the review details for each flag.
  - `flag_id` (text)
  - `reviewed_by_yt` (tinyint)
  - `reviewed_date` (date)
  - `reviewed_outcome` (text)

Focus on flags where `reviewed_outcome` was **'APPROVED'** and determine which user flagged the most **unique videos** that match this outcome.
