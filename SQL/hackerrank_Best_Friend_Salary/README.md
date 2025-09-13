# hackerrank_Best_Friend_Salary

**HackerRank — Best Friend Salary**

**Problem Statement:**  
You are given three tables: `Students`, `Friends`, and `Packages`.  
Write a query to output the names of those students **whose best friends got offered a higher salary than them**.  

- Output the `Name` of such students.  
- Order the results by the **salary amount offered to their best friends**.  
- It is guaranteed that no two students have the same salary offer.

---

## Input Format

The tables have the following structures:

### Students
| Column Name | Type |
|-------------|------|
| ID          | int  |
| Name        | text |

### Friends
| Column Name | Type |
|-------------|------|
| ID          | int  |
| Friend_ID   | int  |

- Each student has exactly one best friend.

### Packages
| Column Name | Type   |
|-------------|--------|
| ID          | int    |
| Salary      | float  |

- Salary is the offered monthly salary (in thousands of dollars).

---

## Sample Input

**Students**  

| ID | Name     |
|----|----------|
| 1  | Samantha |
| 2  | Julia    |
| 3  | Scarlet  |
| 4  | Ashley   |

**Friends**  

| ID | Friend_ID |
|----|-----------|
| 1  | 2         |
| 2  | 3         |
| 3  | 4         |
| 4  | 1         |

**Packages**  

| ID | Salary |
|----|--------|
| 1  | 11.00  |
| 2  | 12.00  |
| 3  | 15.20  |
| 4  | 11.55  |

---

## Sample Output

| Name     |
|----------|
| Samantha |
| Julia    |
| Scarlet  |

---

## Explanation

- Samantha’s salary = 11.00, her best friend Julia’s salary = 12.00 → Julia earns more.  
- Julia’s salary = 12.00, her best friend Scarlet’s salary = 15.20 → Scarlet earns more.  
- Scarlet’s salary = 15.20, her best friend Ashley’s salary = 11.55 → Ashley earns less.  
- Ashley’s salary = 11.55, her best friend Samantha’s salary = 11.00 → Samantha earns less, so Ashley is not included.  

Ordering the qualifying names by their **best friends’ salary offers** gives:  

1. Samantha (friend’s salary = 11.55)  
2. Julia (friend’s salary = 12.00)  
3. Scarlet (friend’s salary = 15.20)  

---

## Notes / Constraints

- Every student has exactly one best friend.  
- All salaries are unique.  
- Sort results by the **friend’s salary**, ascending.
