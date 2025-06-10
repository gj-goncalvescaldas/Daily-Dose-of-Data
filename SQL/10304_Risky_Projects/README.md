# 10304_Risky_Projects

## Problem Description

You are given three datasets: `linkedin_projects`, `linkedin_emp_projects`, and `linkedin_employees`. Each project has a budget and timeline, and employees can be assigned to these projects for specific durations. Employees have annual salaries and may participate in multiple projects.

The task is to identify which projects are **overbudget**. A project is considered overbudget when the **sum of the prorated salaries** of all employees assigned to it exceeds the project's budget.

The **prorated salary** is calculated based on the proportion of the year the employee works on a project. Assume all years have 365 days. For example, if an employee works on a project for 6 months, only 50% of their annual salary counts toward that project.

## Output

Return only the projects where:
- The **total prorated salaries** of all assigned employees **exceed the project budget**.

The output should include:
- `title` (Project title)
- `budget` (Project budget)
- `total_employee_expense` (Total prorated salary cost, rounded up to the nearest dollar)

## Tables

### linkedin_projects
- `id` (int): Unique project ID
- `title` (varchar): Name of the project
- `budget` (int): Budget allocated to the project
- `start_date` (date): Project start date
- `end_date` (date): Project end date

### linkedin_emp_projects
- `emp_id` (int): Employee ID
- `project_id` (int): Project ID
- `start_date` (date): Assignment start date
- `end_date` (date): Assignment end date

### linkedin_employees
- `id` (int): Employee ID
- `first_name` (varchar): Employee's first name
- `last_name` (varchar): Employee's last name
- `salary` (int): Annual salary of the employee
