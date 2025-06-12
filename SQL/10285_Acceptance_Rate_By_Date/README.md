# 10285_Acceptance_Rate_By_Date

Calculate the friend acceptance rate for each date when friend requests were sent. A request is recorded if the `action` column has the value `'sent'`, and it is considered accepted if there's a corresponding record with the value `'accepted'`. 

Only include dates where friend requests were **sent** and at least **one** request was also **accepted** on the same date. The acceptance rate is defined as the ratio of accepted requests to sent requests for each valid date.

The result should be sorted in chronological order from the earliest to the latest date.

## Table: fb_friend_requests

- `action` (text): The action taken (`'sent'` or `'accepted'`)
- `date` (date): The date when the action occurred
- `user_id_sender` (text): The user ID of the person sending the request
- `user_id_receiver` (text): The user ID of the person receiving the request
