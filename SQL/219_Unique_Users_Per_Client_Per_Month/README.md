# 219_Unique_Users_Per_Client_Per_Month

## Problem Description

You are given a table named `fact_events` that contains event-level data with the following columns:

- `id`: unique identifier for each event (bigint)
- `time_id`: date of the event (date)
- `user_id`: ID of the user who triggered the event (text)
- `customer_id`: ID of the customer associated with the event (text)
- `client_id`: ID representing the client type (e.g., 'desktop', 'mobile') (text)
- `event_type`: type of event (text)
- `event_id`: identifier of the event type (bigint)

Your task is to write a query that returns the number of **unique users** for each **client** per **month**. The result should include the following columns:

- `client_id`: the type of client
- `month`: the month extracted from `time_id`
- `users_num`: the count of distinct users (`user_id`) for that client and month

This problem assesses your ability to manipulate dates and perform aggregations on grouped data.
