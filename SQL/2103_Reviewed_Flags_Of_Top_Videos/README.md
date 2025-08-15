# 2103_Reviewed_Flags_Of_Top_Videos

**StrataScratch — Reviewed Flags of Top Videos**

Video platforms track user-reported flags to maintain content quality. Understanding how many of the most flagged videos were actually reviewed can help assess moderation efficiency.

**Task:**  
Identify the video or videos with the highest number of user flags and determine how many of these flags were reviewed by YouTube. Output the video ID and the count of reviewed flags.

**Assumptions:**  
- A “reviewed” flag is one where `reviewed_by_yt` is true (non-zero).  
- If multiple videos tie for the highest number of flags, include all of them.  
- Only user-generated flags are considered (from `user_flags` table).  

**Tables:**  
`user_flags`  
- `flag_id` (text) — unique flag identifier.  
- `user_firstname` (text) — first name of the flagging user.  
- `user_lastname` (text) — last name of the flagging user.  
- `video_id` (text) — identifier of the flagged video.  

`flag_review`  
- `flag_id` (text) — unique flag identifier.  
- `reviewed_by_yt` (tinyint) — 1 if reviewed by YouTube, 0 otherwise.  
- `reviewed_date` (date) — date the flag was reviewed.  
- `reviewed_outcome` (text) — outcome of the review.  

**Output:**  
- `video_id` (text) — ID of the most flagged video(s).  
- `yt_reviewed` (int) — number of flags reviewed by YouTube for that video.


