# 10351_Activity_Rank

Find the email activity rank for each user based on the total number of emails they have sent.

You are provided with the `google_gmail_emails` table, which includes information about email interactions between users. Your task is to compute the total number of emails each user has sent and assign them a unique activity rank. The user who sent the most emails should be ranked 1, the second most emails as rank 2, and so on — even if users have the same number of emails sent.

### Requirements:
- Output the `from_user`, the `total_emails` sent, and their activity rank.
- Rank users by total emails sent in **descending** order.
- If users have the same number of emails sent, order them **alphabetically** by their username.
- Ensure that each user gets a **unique rank**, even when email counts are the same.

### Table: `google_gmail_emails`

| Column     | Type   |
|------------|--------|
| day        | bigint |
| from_user  | text   |
| id         | bigint |
| to_user    | text   |
