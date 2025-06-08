# 10299_Finding_Updated_Records

We are given a table named `ms_employee_salary` that contains records of employees along with their salary information. Some entries may be outdated due to annual salary updates. The objective is to identify and return the most recent salary for each employee, under the assumption that salaries increase each year.

Your output should include the following fields:
- `id`: Employee ID
- `first_name`: Employee's first name
- `last_name`: Employee's last name
- `department_id`: Department the employee belongs to
- `salary`: Most up-to-date salary

The final result must be ordered by `id` in ascending order.

**Table: ms_employee_salary**
- `id` (bigint): Employee ID
- `first_name` (text): First name of the employee
- `last_name` (text): Last name of the employee
- `department_id` (bigint): Department identifier
- `salary` (bigint): Salary of the employee (could include outdated values)
