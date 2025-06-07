# 10141_Apple_Product_Counts

We’re analyzing user data to understand the popularity of specific Apple devices among users who have performed at least one event on the platform. The goal is to measure this popularity across different languages.

You need to determine the number of distinct users per language who used Apple devices, restricted to the following: `"macbook pro"`, `"iphone 5s"`, and `"ipad air"`. Then, compare that count with the total number of users for each language who have performed at least one event.

The final output must include:
- `language`
- Number of Apple users (`n_apple_user`)
- Total number of users per language (`n_total_users`)

Sort the results by the highest total user count per language in descending order.

**Tables Involved**:
- `playbook_events`
- `playbook_users`
