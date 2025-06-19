# 10060_Top_Cool_Votes

## Problem Description

Find the `review_text` that received the highest number of **cool votes** in the `yelp_reviews` dataset.

Return the `business_name` along with the corresponding `review_text`.

---

## Table: `yelp_reviews`

| Column         | Type   |
|----------------|--------|
| business_name  | text   |
| cool           | bigint |
| funny          | bigint |
| review_date    | date   |
| review_id      | text   |
| review_text    | text   |
| stars          | text   |
| useful         | bigint |
| user_id        | text   |

---

## Output

- `business_name`
- `review_text`

---

## Output Format

The result should contain one row with the business name and review text that received the highest number of cool votes.

---

## Example Output (First Row)

| business_name | review_text |
|---------------|-------------|
| Roka Akor     | I hate to admit it, but it had been a long while since my last visit... |
