# hackerrank_Challenges_Created_By_Students

**HackerRank — Challenges Created by Students**

**Problem Statement:**  
Julia asked her students to create some coding challenges.  

Write a query to print the following for each student:  
- `hacker_id`  
- `name`  
- Total number of challenges created (`total_challenges`)  

**Rules:**  
1. Sort results by `total_challenges` **descending**.  
2. If more than one student has the same number of challenges, sort by `hacker_id` ascending.  
3. If multiple students have the same number of challenges **less than the maximum**, exclude them from the output.  

---

## Input Format

### Hackers
| Column Name | Type |
|-------------|------|
| hacker_id   | int  |
| name        | varchar |

### Challenges
| Column Name | Type |
|-------------|------|
| challenge_id| int  |
| hacker_id   | int  |

- Each row in `Challenges` represents a coding challenge created by a hacker.  

---

## Sample Input 0

**Hackers**

| hacker_id | name    |
|-----------|---------|
| 21283     | Angela  |
| 88255     | Patrick |
| 96196     | Lisa    |
| 11111     | John    |
| 22222     | Rose    |

**Challenges**

| challenge_id | hacker_id |
|--------------|-----------|
| 1            | 21283     |
| 2            | 21283     |
| 3            | 21283     |
| 4            | 21283     |
| 5            | 21283     |
| 6            | 21283     |
| 7            | 88255     |
| 8            | 88255     |
| 9            | 88255     |
| 10           | 88255     |
| 11           | 88255     |
| 12           | 96196     |

---

## Sample Output 0

| hacker_id | name   | total_challenges |
|-----------|--------|-----------------|
| 21283     | Angela | 6               |
| 88255     | Patrick| 5               |
| 96196     | Lisa   | 1               |

---

## Sample Input 1

**Hackers**

| hacker_id | name    |
|-----------|---------|
| 12299     | Rose    |
| 34856     | Angela  |
| 79345     | Frank   |
| 80491     | Patrick |
| 81041     | Lisa    |

**Challenges**

| challenge_id | hacker_id |
|--------------|-----------|
| 1            | 12299     |
| 2            | 12299     |
| 3            | 12299     |
| 4            | 12299     |
| 5            | 12299     |
| 6            | 12299     |
| 7            | 34856     |
| 8            | 34856     |
| 9            | 34856     |
| 10           | 34856     |
| 11           | 34856     |
| 12           | 34856     |
| 13           | 79345     |
| 14           | 79345     |
| 15           | 79345     |
| 16           | 79345     |
| 17           | 80491     |
| 18           | 80491     |
| 19           | 80491     |
| 20           | 81041     |

---

## Sample Output 1

| hacker_id | name   | total_challenges |
|-----------|--------|-----------------|
| 12299     | Rose   | 6               |
| 34856     | Angela | 6               |
| 79345     | Frank  | 4               |
| 80491     | Patrick| 3               |
| 81041     | Lisa   | 1               |

---

## Explanation

- **Sample Case 0:**  
  - Some students have the same number of challenges but **less than the maximum**, so they are excluded.  
  - Maximum number of challenges is 6 → students with 6 challenges are included.  

- **Sample Case 1:**  
  - Maximum challenges = 6 → students with 6 challenges are included even if there are ties.  
  - Others are included normally if they have unique counts.

---

## Notes / Constraints

- Each hacker can create multiple challenges.  
- Sort first by `total_challenges` DESC, then `hacker_id` ASC.  
- Only exclude students when multiple students tie with a number **less than the maximum**.  
