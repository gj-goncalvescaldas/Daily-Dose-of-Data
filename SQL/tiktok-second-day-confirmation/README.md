# tiktok-second-day-confirmation

**Platform/Source**: TikTok — Second Day Confirmation

TikTok tracks the confirmation process of new user sign-ups. Users sign up via email and receive a text message to confirm and activate their accounts. Confirmation actions may occur on the day of signup or on a later day.

**Task:**  
Write a query to return the `user_id` of users who did **not** confirm their sign-up on the **same day** they registered, but **did confirm** on the **following day**.

**Definitions:**  
- `signup_date`: Date when the user registered.
- `signup_action`: The status of the confirmation via text message (`'Confirmed'` or `'Not Confirmed'`).
- `action_date`: The date the confirmation action was recorded.

**Tables:**  
`emails`  
- `email_id` (integer)  
- `user_id` (integer)  
- `signup_date` (datetime)

`texts`  
- `text_id` (integer)  
- `email_id` (integer)  
- `signup_action` (string)  
- `action_date` (datetime)

**Output:**  
- `user_id` (integer)
