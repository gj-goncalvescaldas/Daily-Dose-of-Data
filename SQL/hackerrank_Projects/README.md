# hackerrank_Projects

**HackerRank — Projects**

**Problem Statement:**  
You are given a table `Projects` containing task information. Each task spans exactly one day (`End_Date - Start_Date = 1`).  

If the `End_Date` of one task matches the `Start_Date` of another, then those tasks are consecutive and belong to the same project.  

Write a query to output the **start date** and **end date** of each project, ordered first by the number of days it took to complete (ascending), and then by the project’s start date (ascending) if there is a tie.  

---

## Input Format

### Projects
| Column Name | Type | Description |
|-------------|------|-------------|
| Task_ID     | int  | Unique ID of the task |
| Start_Date  | date | Start date of the task |
| End_Date    | date | End date of the task (always `Start_Date + 1`) |

---

## Sample Input

**Projects**

| Task_ID | Start_Date | End_Date   |
|---------|------------|------------|
| 1       | 2015-10-01 | 2015-10-02 |
| 2       | 2015-10-02 | 2015-10-03 |
| 3       | 2015-10-03 | 2015-10-04 |
| 4       | 2015-10-13 | 2015-10-14 |
| 5       | 2015-10-14 | 2015-10-15 |
| 6       | 2015-10-28 | 2015-10-29 |
| 7       | 2015-10-30 | 2015-10-31 |

---

## Sample Output

| Start_Date | End_Date   |
|------------|------------|
| 2015-10-28 | 2015-10-29 |
| 2015-10-30 | 2015-10-31 |
| 2015-10-13 | 2015-10-15 |
| 2015-10-01 | 2015-10-04 |

---

## Explanation

- **Project 1**: Tasks 1–3 are consecutive → start = `2015-10-01`, end = `2015-10-04` → duration = 3 days.  
- **Project 2**: Tasks 4–5 are consecutive → start = `2015-10-13`, end = `2015-10-15` → duration = 2 days.  
- **Project 3**: Task 6 alone → start = `2015-10-28`, end = `2015-10-29` → duration = 1 day.  
- **Project 4**: Task 7 alone → start = `2015-10-30`, end = `2015-10-31` → duration = 1 day.  

Sorting by duration ascending, then by start date ascending gives the output above.  

---

## Notes / Constraints

- Each task spans exactly **1 day**.  
- Projects are formed by chaining consecutive tasks.  
- Sorting priority:  
  1. Project duration (ascending)  
  2. Project start date (ascending)  
