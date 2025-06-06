# 10077_Income_By_Title_and_Gender

Find the average total compensation based on employee titles and gender from the City of San Francisco employee dataset. The total compensation is the sum of salary and bonuses for each employee. Only consider employees who have received at least one bonus, and note that an employee may receive multiple bonuses.

**Output**: For each combination of employee title and gender, return the average total compensation.

**Tables Involved**:
- `sf_employee`: Contains employee details including title, gender, and salary.
- `sf_bonus`: Contains bonuses awarded to employees.

**Columns to Output**:
- `employee_title`
- `sex`
- `avg_compensation` (average of total compensation = salary + sum of bonuses)

**Note**: Exclude employees who did not receive any bonuses.
