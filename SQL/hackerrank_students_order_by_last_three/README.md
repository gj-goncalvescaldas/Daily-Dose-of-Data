# hackerrank_students_order_by_last_three

**HackerRank — Students Ordered by Last Three Characters**

**Problem Statement:**  
Query the `Name` of any student in the `STUDENTS` table who scored higher than a given number of `Marks`.  
Order the output by the last three characters of each `Name`. If two or more students have names ending with the same three characters, then sort them by ascending `ID`.

---

## Input Format

The `STUDENTS` table is described as follows:

| Column Name | Type    |
|-------------|---------|
| ID          | INT     |
| Name        | VARCHAR |
| Marks       | INT     |

- The `Name` column only contains uppercase (`A-Z`) and lowercase (`a-z`) letters.

---

## Sample Input

| ID  | Name    | Marks |
|-----|---------|-------|
| 1   | Ashley  | 81    |
| 2   | Julia   | 88    |
| 3   | Belvet  | 85    |
| 4   | Britney | 75    |

---

## Sample Output

Ashley
Julia
Belvet

---

## Explanation

- Only **Ashley**, **Julia**, and **Belvet** have `Marks > 75`.  
- Sorting by the last three characters of each name gives:  
  - `Ashley` → `ley`  
  - `Julia` → `lia`  
  - `Belvet` → `vet`  
- Order: `ley` < `lia` < `vet`.  
- Since no two names share the same last three characters, no secondary sorting by `ID` is required.

---

## Notes / Constraints

- Return only students with `Marks` greater than the specified threshold.  
- Primary sort: last three characters of `Name`.  
- Secondary sort (tie-breaker): ascending `ID`.  
