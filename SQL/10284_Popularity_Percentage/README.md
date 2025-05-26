# 10284_Popularity_Percentage

Given a table `facebook_friends` representing mutual friendships between users on Meta/Facebook, each row consists of two user IDs (`user1` and `user2`) indicating that these two users are friends.

Your task is to compute the **popularity percentage** for each user. The popularity percentage is defined as:

- The number of friends a user has (counting appearances in both `user1` and `user2` columns)
- Divided by the total number of **unique** users on the platform
- Multiplied by 100 to convert it into a percentage

Return a result that includes each user ID and their corresponding popularity percentage. The output must be ordered by `user_id` in ascending order.

### Table: `facebook_friends`

| Column | Type   |
|--------|--------|
| user1  | bigint |
| user2  | bigint |

### Output

| Column             | Type    |
|--------------------|---------|
| user_id            | bigint  |
| popularity_percent | float   |
