# faang-well-paid-employees

**Platform/Source**: FAANG — Well Paid Employees

Companies often analyze salaries to ensure equitable compensation. HR analysts may need to identify employees who earn more than their direct managers.

**Task:**  
Identify all employees whose salary is higher than that of their direct manager. Return their ID and name.

**Assumptions:**  
- Compare employee salary to their manager’s salary using `manager_id` as the reference.
- Exclude employees who do not have a manager (`manager_id` is NULL).

**Tables:**  
`employee`  
- `employee_id` (integer)  
- `name` (string)  
- `salary` (integer)  
- `department_id` (integer)  
- `manager_id` (integer)

**Output:**  
- `employee_id`  
- `employee_name`


