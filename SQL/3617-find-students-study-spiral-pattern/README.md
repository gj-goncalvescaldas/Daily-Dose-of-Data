# 3617. Find Students with Study Spiral Pattern

**Difficulty:** Hard  
**Status:** Attempted  
**Premium:** 🔒  

---

## Description

Write a solution to find students who follow the **Study Spiral Pattern** — students who consistently study multiple subjects in a rotating cycle.

- A **Study Spiral Pattern** means a student studies **at least 3 different subjects** in a repeating sequence.  
- The pattern must repeat for at least **2 complete cycles** (minimum 6 study sessions).  
- Study sessions must occur on **consecutive dates with no gaps longer than 2 days**.  
- For students that meet the pattern:
  - Calculate the **cycle length** (number of different subjects in the pattern).  
  - Calculate the **total study hours** across all sessions in the pattern.  
- Only include students with a cycle length of at least 3.  
- Return the result table ordered by:
  1. `cycle_length` (descending)  
  2. `total_study_hours` (descending)  

---

## Schema

### Table: `students`
| Column Name  | Type    |
|--------------|---------|
| student_id   | int     |
| student_name | varchar |
| major        | varchar |

- `student_id` is the unique identifier for this table.  
- Each row contains information about a student and their academic major.  

### Table: `study_sessions`
| Column Name   | Type    |
|---------------|---------|
| session_id    | int     |
| student_id    | int     |
| subject       | varchar |
| session_date  | date    |
| hours_studied | decimal |

- `session_id` is the unique identifier for this table.  
- Each row represents a study session by a student for a specific subject.  

---

## Example

### Input

**students table:**
| student_id | student_name | major            |
|------------|--------------|------------------|
| 1          | Alice Chen   | Computer Science |
| 2          | Bob Johnson  | Mathematics      |
| 3          | Carol Davis  | Physics          |
| 4          | David Wilson | Chemistry        |
| 5          | Emma Brown   | Biology          |

**study_sessions table:**
| session_id | student_id | subject    | session_date | hours_studied |
|------------|------------|------------|--------------|---------------|
| 1          | 1          | Math       | 2023-10-01   | 2.5           |
| 2          | 1          | Physics    | 2023-10-02   | 3.0           |
| 3          | 1          | Chemistry  | 2023-10-03   | 2.0           |
| 4          | 1          | Math       | 2023-10-04   | 2.5           |
| 5          | 1          | Physics    | 2023-10-05   | 3.0           |
| 6          | 1          | Chemistry  | 2023-10-06   | 2.0           |
| 7          | 2          | Algebra    | 2023-10-01   | 4.0           |
| 8          | 2          | Calculus   | 2023-10-02   | 3.5           |
| 9          | 2          | Statistics | 2023-10-03   | 2.5           |
| 10         | 2          | Geometry   | 2023-10-04   | 3.0           |
| 11         | 2          | Algebra    | 2023-10-05   | 4.0           |
| 12         | 2          | Calculus   | 2023-10-06   | 3.5           |
| 13         | 2          | Statistics | 2023-10-07   | 2.5           |
| 14         | 2          | Geometry   | 2023-10-08   | 3.0           |
| 15         | 3          | Biology    | 2023-10-01   | 2.0           |
| 16         | 3          | Chemistry  | 2023-10-02   | 2.5           |
| 17         | 3          | Biology    | 2023-10-03   | 2.0           |
| 18         | 3          | Chemistry  | 2023-10-04   | 2.5           |
| 19         | 4          | Organic    | 2023-10-01   | 3.0           |
| 20         | 4          | Physical   | 2023-10-05   | 2.5           |

### Output
| student_id | student_name | major            | cycle_length | total_study_hours |
|------------|--------------|------------------|--------------|-------------------|
| 2          | Bob Johnson  | Mathematics      | 4            | 26.0              |
| 1          | Alice Chen   | Computer Science | 3            | 15.0              |

---

## Explanation

- **Alice Chen (student_id = 1):**  
  - Sequence: Math → Physics → Chemistry → Math → Physics → Chemistry  
  - Cycle length = 3 subjects  
  - 2 complete cycles (6 sessions)  
  - Total study hours = 15.0  

- **Bob Johnson (student_id = 2):**  
  - Sequence: Algebra → Calculus → Statistics → Geometry → Algebra → Calculus → Statistics → Geometry  
  - Cycle length = 4 subjects  
  - 2 complete cycles (8 sessions)  
  - Total study hours = 26.0  

- **Excluded students:**  
  - Carol Davis: only 2 subjects (fails ≥3 subjects rule).  
  - David Wilson: only 2 sessions with a 4-day gap (fails date continuity rule).  
  - Emma Brown: no sessions.  

The results are sorted by `cycle_length` **descending**, then `total_study_hours` **descending**.  

---

## Solution Explanation

1. **Identifying gaps (`date_gaps`)**  
   For each student’s study session, compare the date with the previous session.  
   If the difference is greater than 2 days, mark it as a gap (a break in the sequence).  
   This helps identify where continuous study blocks start and end.  

2. **Grouping consecutive sessions (`consecutive_groups`)**  
   Accumulate the gap markers over time.  
   Each time a gap is found, a new group of consecutive sessions begins.  
   As a result, each student’s study history is split into continuous blocks (no breaks > 2 days).  

3. **Numbering sessions within groups (`session_sequences`)**  
   Within each consecutive block, order sessions by date.  
   Assign a sequential number (ROW_NUMBER): 1, 2, 3, …  
   This prepares the sequence for cycle detection.  

4. **Selecting spiral candidates (`spiral_candidates`)**  
   For each consecutive block, calculate:  
   - Total number of sessions  
   - Number of distinct subjects  
   - Total hours studied  
   Keep only blocks that:  
   - Have ≥ 3 different subjects  
   - Have ≥ 6 sessions (minimum needed for 2 full cycles).  

5. **Validating cycle requirements (`pattern_validation`)**  
   Compute the cycle length = number of distinct subjects.  
   Verify at least 2 complete cycles exist:  
   - Example: 3 subjects → need at least 6 sessions.  
   Only keep blocks meeting this rule.  

6. **Checking cycle repetition (`cycle_verification`)**  
   Confirm the subject sequence actually repeats.  
   Compare subjects from the first cycle with the next:  
   - Session 1 = Session 1 + cycle_length  
   - Session 2 = Session 2 + cycle_length  
   - … and so on.  
   If all align, the spiral pattern is confirmed.  

7. **Final result**  
   For each valid student:  
   - Output student ID, name, major, cycle length, and total hours.  
   - Order results by:  
     1. Longer cycles first (descending)  
     2. More study hours next (descending).  
