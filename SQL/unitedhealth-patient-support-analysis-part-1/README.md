# unitedhealth-patient-support-analysis-part-1

**Platform/Source**: UnitedHealth — Patient Support Analysis (Part 1)

UnitedHealth Group (UHG) offers a program called Advocate4Me, which allows members to contact advocates for support with various healthcare services. You’ve been asked to analyze member engagement with the program based on call data.

**Task:**  
Write a query to count how many UHG policy holders made three or more calls, where each call is uniquely identified by a `case_id`.

**Assumptions:**  
- Each row in the dataset represents one call.  
- Calls are considered unique by their `case_id`.  
- Count only distinct policy holders who made at least 3 calls.

**Tables:**  
`callers`  
- `policy_holder_id` (integer)  
- `case_id` (varchar)  
- `call_category` (varchar)  
- `call_date` (timestamp)  
- `call_duration_secs` (integer)

**Output:**  
- One column: `policy_holder_count`



