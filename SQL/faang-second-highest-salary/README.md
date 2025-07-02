# faang-second-highest-salary

**DataLemur: FAANG — Second Highest Salary**

You are working as an HR analyst and need to analyze employee salary data. Your manager has asked you to identify the **second highest salary** from the employee records.

The `employee` table includes the following columns:
- `employee_id` (integer): Unique ID of the employee
- `name` (string): Name of the employee
- `salary` (integer): Salary amount
- `department_id` (integer): ID of the department the employee belongs to
- `manager_id` (integer): ID of the employee's manager

Your task is to return the **second highest salary** among all employees. If there are multiple employees with the same second highest salary, it should be returned only once.

The output must include only one column:
- `second_highest_salary`
