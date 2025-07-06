# microsoft-teams-power-users

**DataLemur: Microsoft — Teams Power Users**

You are provided with a `messages` table that records messages sent between users on Microsoft Teams. Each record includes details about who sent the message, who received it, the message content, and when it was sent.

The `messages` table contains:
- `message_id` (integer): Unique ID of the message
- `sender_id` (integer): ID of the user who sent the message
- `receiver_id` (integer): ID of the message recipient
- `content` (varchar): Content of the message
- `sent_date` (datetime): Date and time when the message was sent

Your task is to identify the **top 2 users** who sent the **highest number of messages** in **August 2022**. Return their `sender_id` and the corresponding `message_count`.

The results must be sorted in descending order by the number of messages sent. You may assume that no two users have the same message count for this period.
