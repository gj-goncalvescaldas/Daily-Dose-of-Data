# twitter-tweets-rolling-averages

**Platform/Source**: Twitter — Tweets' Rolling Averages

Twitter’s analytics team wants to understand user activity trends over time by examining short-term fluctuations in tweet volume. A 3-day rolling average will help reveal how tweeting behavior changes over consecutive days.

**Task:**  
For each user, calculate the 3-day rolling average of tweets over the given period, rounding the result to 2 decimal places.

**Assumptions:**  
- The rolling average includes the current day and the two preceding days (or fewer if not available).  
- Calculations are done separately for each user.  
- Results should be rounded to 2 decimal places.

**Tables:**  
`tweets`  
- `user_id` (integer)  
- `tweet_date` (timestamp)  
- `tweet_count` (integer)  

**Output:**  
- `user_id` (integer)  
- `tweet_date` (timestamp)  
- `rolling_avg_3d` (decimal, rounded to 2 decimal places)


