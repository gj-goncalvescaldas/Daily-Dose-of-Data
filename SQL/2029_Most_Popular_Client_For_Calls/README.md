# 2029_Most_Popular_Client_For_Calls

Select the most popular `client_id` based on the number of **users** who individually have at least **50% of their events** from the following list:

- 'video call received'
- 'video call sent'
- 'voice call received'
- 'voice call sent'

## Table: `fact_events`

### Columns:
- `id`: bigint
- `time_id`: date
- `user_id`: text
- `customer_id`: text
- `client_id`: text
- `event_type`: text
- `event_id`: bigint

The goal is to identify the `client_id` associated with the **highest number of users** who meet the 50% call-related activity threshold.
