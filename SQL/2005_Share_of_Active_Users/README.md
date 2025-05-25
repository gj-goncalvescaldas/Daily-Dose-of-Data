# 2005_Share_of_Active_Users

## Problem Explanation

Calculate the percentage of users who meet **both** of the following conditions:

1. The user's `country` is `'USA'`.
2. The user's `status` is `'open'`.

The result should be a **single value** representing the share of such users out of **all users** in the `fb_active_users` table.

## Table

**fb_active_users**

| Column   | Type   | Description          |
|----------|--------|----------------------|
| user_id  | bigint | User identifier      |
| name     | text   | User's full name     |
| status   | text   | Account status       |
| country  | text   | User's country       |

## Output

| us_active_share |
|-----------------|
| 13.04           |
