# twitter-histogram-of-tweets

**Platform/Source**: Twitter — Histogram of Tweets

Social media platforms often analyze user engagement to understand posting behavior. This task focuses on identifying how frequently users tweeted in a specific year.

**Task:**  
Count how many users posted the same number of tweets in 2022. Group users by their total number of tweets in that year.

**Assumptions:**  
- Only include tweets from the year 2022.
- Count distinct users per tweet count bucket.

**Tables:**  
`tweets`  
- `tweet_id` (integer)  
- `user_id` (integer)  
- `msg` (string)  
- `tweet_date` (timestamp)

**Output:**  
- `tweet_bucket` (number of tweets in 2022 per user)  
- `users_num` (count of users who posted that many tweets)


