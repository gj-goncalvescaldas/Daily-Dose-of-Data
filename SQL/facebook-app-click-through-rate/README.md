# facebook-app-click-through-rate

**Platform/Source**: Facebook — App Click-through Rate (CTR)

Facebook wants to analyze the effectiveness of their mobile app engagement by calculating the click-through rate (CTR) of impressions for each app in 2022.

**Task:**  
Write a query to calculate the percentage click-through rate (CTR) per app for the year 2022. Round the CTR to 2 decimal places.

**Assumptions:**  
- CTR is defined as `100.0 * clicks / impressions`.
- Only include events from the year 2022.
- Multiply by `100.0` to ensure correct float division (not integer division).

**Tables:**  
`events`  
- `app_id` (integer)  
- `event_type` (string)  
- `timestamp` (datetime)

**Output:**  
- `app_id`  
- `ctr` (rounded to two decimal places)



