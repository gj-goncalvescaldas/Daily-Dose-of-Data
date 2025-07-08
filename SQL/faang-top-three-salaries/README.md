\# faang-top-three-salaries



\*\*DataLemur: FAANG — Top Three Salaries\*\*



As part of an internal salary analysis, you are asked to identify \*\*high earners\*\* in each department. A high earner is defined as an employee whose salary ranks in the \*\*top three\*\* within their respective department.



You are provided with the following tables:



\### `employee`

\- `employee\_id` (integer): Unique ID of the employee

\- `name` (string): Name of the employee

\- `salary` (integer): Employee's salary

\- `department\_id` (integer): ID of the department the employee belongs to

\- `manager\_id` (integer): ID of the employee's manager



\### `department`

\- `department\_id` (integer): ID of the department

\- `department\_name` (string): Name of the department



Your task is to generate a report that includes:

\- `department\_name`

\- `name` (of employee)

\- `salary`



Only include employees whose salaries are among the \*\*top 3\*\* in their department. If there are ties in salary, use a \*\*ranking function\*\* to ensure proper inclusion. The results should be sorted by:

1\. `department\_name` (ascending)

2\. `salary` (descending)

3\. `name` (alphabetically)



