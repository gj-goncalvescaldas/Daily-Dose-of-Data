# 514_Marketing_Campaign_Success

You are given a table named `marketing_campaign` that tracks in-app purchases made by users. When a user makes their **first in-app purchase**, they are entered into a **marketing campaign**. The goal is to determine how many users **made additional purchases** as a result of the campaign's effectiveness.

**Important Conditions:**
- The **campaign begins one day after** a user's **first purchase**.
- Users who **only purchase** on the first day (regardless of how many purchases they made that day) should be **excluded**.
- Users who made purchases **after the first day but only bought the same products** they bought on the first day should also be **excluded**.

**Your task** is to compute the number of users who made **additional purchases influenced by the campaign**, meaning they:
- Purchased items on days **after their first purchase day**, and
- Bought at least **one product different** from those purchased on the first day.

### Table: `marketing_campaign`

| Column Name | Data Type |
|-------------|-----------|
| user_id     | bigint    |
| created_at  | date      |
| product_id  | bigint    |
| quantity    | bigint    |
| price       | bigint    |

### Output

- `user_count` — the number of users whose purchases after their first day indicate a successful campaign.
