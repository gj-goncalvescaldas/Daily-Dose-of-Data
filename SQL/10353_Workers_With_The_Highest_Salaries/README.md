# 10353_Workers_With_The_Highest_Salaries

Find the job titles of the employees who earn the highest salary from the company. If more than one employee shares the highest salary, include all of their job titles.

You are given two tables:

- `worker`: contains basic employee details such as name, salary, and joining date.
- `title`: maps each worker to their job title and the date from which the title was assigned.

Your task is to return the job titles associated with the highest-paid employees.

### Tables

**worker**
- `worker_id` (bigint): Unique identifier of the worker.
- `first_name` (text): First name of the worker.
- `last_name` (text): Last name of the worker.
- `salary` (bigint): Salary of the worker.
- `joining_date` (date): Date the worker joined.
- `department` (text): Department in which the worker works.

**title**
- `worker_ref_id` (bigint): Reference to the `worker_id`.
- `worker_title` (text): Job title of the worker.
- `affected_from` (date): The date from which the title is effective.

### Output
- `best_paid_title` (text): The job titles of the highest-paid employee(s).
