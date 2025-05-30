# 9894_Employee_and_Manager_Salaries

Find all employees who are earning a higher salary than their respective managers.

You are provided with a table named `employee` that contains detailed information about each employee, including their salary and the ID of their manager. Your task is to identify employees whose salary is greater than the salary of their manager. The result should include the employee's first name and salary.

### Table: employee

- `id` (bigint): Unique identifier for the employee.
- `first_name` (text): First name of the employee.
- `last_name` (text): Last name of the employee.
- `age` (bigint): Age of the employee.
- `sex` (text): Gender of the employee.
- `employee_title` (text): Job title of the employee.
- `department` (text): Department where the employee works.
- `salary` (bigint): Employee's salary.
- `target` (bigint): Target value for performance.
- `bonus` (bigint): Bonus amount received by the employee.
- `email` (text): Email address of the employee.
- `city` (text): City where the employee resides.
- `address` (text): Full address of the employee.
- `manager_id` (bigint): ID of the employee's manager.
