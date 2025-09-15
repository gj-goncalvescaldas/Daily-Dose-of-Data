# hackerrank_Students_and_Grades

**HackerRank — Students and Grades**

**Problem Statement:**  
You are given two tables: `Students` and `Grades`.  

- The `Students` table contains the students’ details: ID, Name, and Marks.  
- The `Grades` table contains grade ranges based on marks.  

Ketty gives Eve a task to generate a report with three columns: `Name`, `Grade`, and `Mark`. The rules are:

1. **Do not display the names** of students whose grade is lower than 8. Instead, display `"NULL"`.  
2. The report must be ordered by **Grade in descending order**.  
3. For students with grade **8–10**, order them alphabetically by `Name`.  
4. For students with grade **1–7**, order them by `Marks` in ascending order.  

---

## Input Format

### Students
| Column Name | Type |
|-------------|------|
| ID          | int  |
| Name        | text |
| Marks       | int  |

### Grades
| Column Name | Type |
|-------------|------|
| Grade       | int  |
| Min_Mark    | int  |
| Max_Mark    | int  |

- Each student has exactly one grade, determined by their `Marks` falling between `Min_Mark` and `Max_Mark`.

---

## Sample Input

**Students**

| ID | Name    | Marks |
|----|---------|-------|
| 1  | Julia   | 88    |
| 2  | Scarlet | 78    |
| 3  | Maria   | 99    |
| 4  | Jane    | 81    |
| 5  | Ketty   | 63    |
| 6  | Angela  | 68    |

**Grades**

| Grade | Min_Mark | Max_Mark |
|-------|----------|----------|
| 10    | 90       | 100      |
| 9     | 80       | 89       |
| 8     | 70       | 79       |
| 7     | 60       | 69       |
| 6     | 50       | 59       |
| ...   | ...      | ...      |
| 1     | 0        | 9        |

---

## Sample Output

| Name    | Grade | Mark |
|---------|-------|------|
| Maria   | 10    | 99   |
| Jane    | 9     | 81   |
| Julia   | 9     | 88   |
| Scarlet | 8     | 78   |
| NULL    | 7     | 63   |
| NULL    | 7     | 68   |

---

## Explanation

- **Maria** has 99 marks → falls in Grade 10.  
- **Jane** (81) and **Julia** (88) fall in Grade 9 → sorted alphabetically by name.  
- **Scarlet** (78) falls in Grade 8.  
- **Ketty** (63) and **Angela** (68) fall in Grade 7 → names replaced with `"NULL"`, sorted by ascending marks.  

Final ordering is by **Grade descending**, and within each grade, sorting follows the given rules.  

---

## Notes / Constraints

- Marks are integers between 0 and 100.  
- Each mark range is exclusive to one grade.  
- The `"NULL"` string must be printed exactly as shown when the grade is less than 8.  
- Sorting priority:  
  1. Grade DESC  
  2. If Grade ≥ 8 → Name ASC  
  3. If Grade < 8 → Marks ASC  
