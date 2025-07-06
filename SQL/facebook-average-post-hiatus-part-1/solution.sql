# facebook-average-post-hiatus-part-1

**DataLemur: Facebook — Average Post Hiatus (Part 1)**

You are given a table `posts` that stores data about Facebook posts made by users, including the post timestamp.

The `posts` table contains:
- `user_id` (integer): ID of the user who made the post
- `post_id` (integer): ID of the post
- `post_content` (text): Content of the post
- `post_date` (timestamp): Date and time when the post was made

Your task is to identify all users who made **at least two posts** in the year **2021**. For each of these users, calculate the number of **days between their first and last post** in that year.

The output should include:
- `user_id`
- `days_between`: Number of days between the user's earliest and latest post in 2021
