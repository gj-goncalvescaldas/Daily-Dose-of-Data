# 9917_Average_Salaries

Compare each employee's salary with the average salary of their respective department.

You are given a table called `employee` that contains information about employees such as their first name, department, and salary. Your task is to return a list that includes:

- The department of the employee.
- The first name of the employee.
- The individual salary of the employee.
- The average salary for the employee's department.

### Table: employee

The `employee` table has the following columns:

- `id`: bigint
- `first_name`: text
- `last_name`: text
- `employee_title`: text
- `sex`: text
- `email`: text
- `city`: text
- `address`: text
- `age`: bigint
- `salary`: bigint
- `bonus`: bigint
- `target`: bigint
- `manager_id`: bigint
- `department`: text

Your output should include:

- `department`
- `first_name`
- `salary`
- `avg_salary`
