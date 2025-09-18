# hackerrank_Total_Score_of_Hackers

**HackerRank — Total Score of Hackers**

**Problem Statement:**  
The total score of a hacker is the **sum of their maximum scores** for all of the challenges.  

Write a query to print the following for each hacker:  
- `hacker_id`  
- `name`  
- `total_score` (sum of maximum scores per challenge)  

**Rules:**  
1. Order results by `total_score` **descending**.  
2. If more than one hacker has the same total score, sort by `hacker_id` **ascending**.  
3. Exclude all hackers with a `total_score = 0`.  

---

## Input Format

### Hackers
| Column Name | Type   |
|-------------|--------|
| hacker_id   | int    |
| name        | string |

### Submissions
| Column Name   | Type   |
|---------------|--------|
| submission_id | int    |
| hacker_id     | int    |
| challenge_id  | int    |
| score         | int    |

- Each submission belongs to a hacker and a challenge.  
- Hackers may submit multiple times for the same challenge; only the **maximum score per challenge** counts toward their total.  

---

## Sample Input

**Hackers**

| hacker_id | name     |
|-----------|----------|
| 4071      | Rose     |
| 74842     | Lisa     |
| 84072     | Bonnie   |
| 4806      | Angela   |
| 26071     | Frank    |
| 80305     | Kimberly |
| 49438     | Patrick  |

**Submissions**

| submission_id | hacker_id | challenge_id | score |
|---------------|-----------|--------------|-------|
| 1             | 4071      | 19797        | 95    |
| 2             | 4071      | 19797        | 96    |
| 3             | 4071      | 49593        | 95    |
| 4             | 74842     | 19797        | 80    |
| 5             | 74842     | 63132        | 94    |
| 6             | 84072     | 49593        | 100   |
| 7             | 84072     | 63132        | 0     |
| 8             | 4806      | 19797        | 89    |
| 9             | 26071     | 63132        | 85    |
| 10            | 80305     | 19797        | 67    |
| 11            | 49438     | 49593        | 43    |

---

## Sample Output

| hacker_id | name     | total_score |
|-----------|----------|-------------|
| 4071      | Rose     | 191         |
| 74842     | Lisa     | 174         |
| 84072     | Bonnie   | 100         |
| 4806      | Angela   | 89          |
| 26071     | Frank    | 85          |
| 80305     | Kimberly | 67          |
| 49438     | Patrick  | 43          |

---

## Explanation

- Hacker **4071** (Rose): max score for challenge 19797 = 96, challenge 49593 = 95 → total = **191**.  
- Hacker **74842** (Lisa): max(19797) = 80, max(63132) = 94 → total = **174**.  
- Hacker **84072** (Bonnie): max(49593) = 100, max(63132) = 0 → total = **100**.  
- Similarly for Angela, Frank, Kimberly, and Patrick.  

Hacker(s) with `total_score = 0` are excluded from the output.  

---

## Notes / Constraints

- Each hacker may submit multiple times per challenge, only the highest score counts.  
- Sorting priority: `total_score DESC`, then `hacker_id ASC`.  
- Hackers with `total_score = 0` must not be printed.  
