# amazon-server-utilization-time

**DataLemur: Amazon — Server Utilization Time**

Amazon Web Services (AWS) needs to monitor and optimize its fleet of servers.

**Task:**  
Using the `server_utilization` table, calculate the **total number of full days** that all servers were running. A server can have multiple start and stop sessions, and each session's duration should be summed to compute the total uptime.

**Assumptions:**  
- Each session has one `start` and one `stop` entry.  
- The `session_status` indicates whether the server was started or stopped at a specific `status_time`.

**Table:**  

`server_utilization`  
- `server_id` (integer)  
- `status_time` (timestamp)  
- `session_status` (string)  

**Output:**  
- One column: `total_uptime_days`  
