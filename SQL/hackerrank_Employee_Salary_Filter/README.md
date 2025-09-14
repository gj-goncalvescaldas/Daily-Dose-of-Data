# hackerrank_Employee_Salary_Filter

**HackerRank — Employee Salary Filter**

**Problem Statement:**  
Write a query that prints a list of employee names (`name`) for employees in the `Employee` table:  

- Whose `salary` is **greater than 2000** per month  
- AND who have been employees for **less than 10 months**  

Sort the result by ascending `employee_id`.

---

## Input Format

The `Employee` table is described as follows:

| Column Name  | Type |
|--------------|------|
| employee_id  | int  |
| name         | text |
| months       | int  |
| salary       | int  |

- `employee_id` is the unique ID of the employee.  
- `name` is the name of the employee.  
- `months` is the total number of months the employee has worked at the company.  
- `salary` is the monthly salary of the employee.

---

## Sample Input

| employee_id | name    | months | salary |
|-------------|---------|--------|--------|
| 12228       | Rose    | 15     | 1968   |
| 33645       | Angela  | 1      | 3443   |
| 45692       | Frank   | 17     | 1608   |
| 56118       | Patrick | 7      | 1345   |
| 59725       | Lisa    | 11     | 2330   |
| 74197       | Kimberly| 16     | 4372   |
| 78454       | Bonnie  | 8      | 1771   |
| 83565       | Michael | 6      | 2017   |
| 98607       | Todd    | 5      | 3396   |
| 99989       | Joe     | 9      | 3573   |

---

## Sample Output

| name    |
|---------|
| Angela  |
| Michael |
| Todd    |
| Joe     |

---

## Explanation

- **Angela** has worked for 1 month and earns 3443 > 2000.  
- **Michael** has worked for 6 months and earns 2017 > 2000.  
- **Todd** has worked for 5 months and earns 3396 > 2000.  
- **Joe** has worked for 9 months and earns 3573 > 2000.  

Other employees either:  
- Have been employees for **10 months or more**, or  
- Earn **2000 or less** per month.  

The result is sorted by ascending `employee_id`.  

---

## Notes / Constraints

- Salary threshold is **2000**.  
- Months threshold is **10**.  
- No two employees share the same `employee_id`.  
