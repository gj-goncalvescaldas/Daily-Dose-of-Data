# faang-department-vs-company-salary

**Platform/Source**: FAANG — Department vs. Company Salary**

A major tech company wants to evaluate how salaries vary across departments compared to the overall company average.

**Task:**  
For March 2024, determine whether each department’s average salary is ‘higher’, ‘lower’, or the ‘same’ as the company’s overall average salary.

**Assumptions:**  
- Only consider salary payments from March 2024.  
- Output must include all departments with salary data for that month.  
- Return results in MM-YYYY format.

**Tables:**  
`employee`  
- `employee_id` (integer)  
- `name` (string)  
- `salary` (integer)  
- `department_id` (integer)  
- `manager_id` (integer)  

`salary`  
- `salary_id` (integer)  
- `employee_id` (integer)  
- `amount` (integer)  
- `payment_date` (datetime)

**Output:**  
- `department_id` (integer)  
- `payment_date` (string, formatted as MM-YYYY)  
- `comparison` (string: 'higher', 'lower', or 'same')
