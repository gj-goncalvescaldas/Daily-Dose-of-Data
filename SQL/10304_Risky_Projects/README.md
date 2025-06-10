# 10304_Risky_Projects

You are provided with three datasets containing information about projects, employees, and their assignments. Each project has a name, a budget, a start date, and an end date. Each employee has an annual salary and can be assigned to one or more projects for specific durations.

The task is to determine which projects are **overbudget**. A project is classified as overbudget if the total **prorated** salaries of all assigned employees exceed the budget of that project.

Prorated salary is calculated based on the fraction of the year an employee works on a project. For instance, if an employee works on a project for 6 months, only 50% of their annual salary is considered for that project. All years are assumed to have 365 days (no leap years).

Your final result should list **only those projects** where the **sum of prorated salaries** surpasses the **project's budget**. The output must include:
- Project title
- Project budget
- Total prorated employee expenses (rounded up to the nearest dollar)

### Available Tables:
- `linkedin_projects`: Contains project ID, title, budget, start and end dates.
- `linkedin_emp_projects`: Contains assignments of employees to projects.
- `linkedin_employees`: Contains employee ID, name, and annual salary.
