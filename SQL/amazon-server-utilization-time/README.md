\# amazon-server-utilization-time



\*\*DataLemur: Amazon — Server Utilization Time\*\*



Amazon Web Services (AWS) needs to monitor and optimize its fleet of servers.



\*\*Task:\*\*  

Using the `server\_utilization` table, calculate the \*\*total number of full days\*\* that all servers were running. A server can have multiple start and stop sessions, and each session's duration should be summed to compute the total uptime.



\*\*Assumptions:\*\*  

\- Each session has one `start` and one `stop` entry.  

\- The `session\_status` indicates whether the server was started or stopped at a specific `status\_time`.



\*\*Table:\*\*  



`server\_utilization`  

\- `server\_id` (integer)  

\- `status\_time` (timestamp)  

\- `session\_status` (string)  



\*\*Output:\*\*  

\- One column: `total\_uptime\_days`  



