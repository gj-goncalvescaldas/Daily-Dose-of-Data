# facebook-advertiser-status

**Platform/Source**: Facebook — Advertiser Status

Facebook is analyzing the payment behavior of its advertisers to understand their engagement over time.

**Task:**  
Update the payment status of each advertiser based on recent payment data, and return the user ID along with the updated status.

**Assumptions:**  
- The `advertiser` table contains all advertisers and their current status.
- The `daily_pay` table only includes advertisers who have made a payment on the current day.
- Status transitions follow strict business rules based on whether the advertiser has paid today and their previous status.
- Advertisers not in `daily_pay` are assumed to have made no payment on the current day.
- Possible updated statuses: `EXISTING`, `CHURN`, or `RESURRECT`.

**Tables:**  
`advertiser`  
- `user_id` (string)  
- `status` (string)  

`daily_pay`  
- `user_id` (string)  
- `paid` (decimal)  

**Output:**  
- `user_id` (string)  
- `new_status` (string)
