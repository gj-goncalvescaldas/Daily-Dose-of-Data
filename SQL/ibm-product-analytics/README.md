# ibm-product-analytics

**Platform/Source**: IBM — Product Analytics

IBM is analyzing how employees are using the Db2 database by tracking their executed SQL queries. The goal is to understand employee query behavior during Q3 2023 to support resource planning and training.

**Task:**  
Build a histogram showing how many employees executed 0, 1, 2, etc. unique queries from July to September 2023.

**Assumptions:**  
- Only queries between July 1 and September 30, 2023, are relevant.  
- Each `query_id` is unique and tied to an employee.  
- Employees with no queries in the given period should be included with a count of zero.

**Tables:**  
`queries`  
- `employee_id` (integer)  
- `query_id` (integer)  
- `query_starttime` (datetime)  
- `execution_time` (integer)  

`employees`  
- `employee_id` (integer)  
- `full_name` (string)  
- `gender` (string)  

**Output:**  
- `unique_queries`: integer count of unique queries  
- `employee_count`: number of employees who ran that many unique queries  
