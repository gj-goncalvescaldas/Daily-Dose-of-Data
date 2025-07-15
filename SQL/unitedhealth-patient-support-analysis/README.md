\# unitedhealth-patient-support-analysis



\*\*DataLemur: UnitedHealth — Patient Support Analysis (Part 2)\*\*



UnitedHealth Group (UHG) has a program called Advocate4Me, which allows policy holders (members) to call an advocate and receive support for their health care needs, including claims and benefits support, drug coverage, authorisation, medical records, emergency assistance, and member portal services.



Calls are classified into various categories, but some cannot be categorised and are either labeled as “n/a” or left empty.



\*\*Task:\*\*  

Calculate the percentage of calls that cannot be categorised. Round the result to \*\*1 decimal place\*\*.



\*\*Table:\*\*



`callers`  

\- `policy\_holder\_id` (integer)  

\- `case\_id` (varchar)  

\- `call\_category` (varchar)  

\- `call\_date` (timestamp)  

\- `call\_duration\_secs` (integer)  



\*\*Output:\*\*  

\- One column: `uncategorised\_call\_pct`



