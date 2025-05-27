# 9653_MacBookPro_User_Event_Count

Count the number of user events performed specifically by users using a MacBookPro device.

You are provided with a table named `playbook_events` which logs user activities. Each record includes the user ID, timestamp of the event, type and name of the event, location, and the device used.

Your task is to:

- Determine the count of each unique event name performed by users on a **MacBookPro**.
- Return two columns: `event_name` and the corresponding `event_count`.
- Sort the output in **descending** order based on `event_count`.

### Table: playbook_events

| Column Name   | Data Type |
|---------------|-----------|
| user_id       | bigint    |
| occurred_at   | timestamp |
| event_type    | text      |
| event_name    | text      |
| location      | text      |
| device        | text      |
