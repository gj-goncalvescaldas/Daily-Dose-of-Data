# hackerrank_interviews

**HackerRank — Interviews**

**Problem Statement:**  
Samantha interviews many candidates from different colleges using coding challenges and contests.  
Write a query to print the `contest_id`, `hacker_id`, `name`, and the sums of `total_submissions`, `total_accepted_submissions`, `total_views`, and `total_unique_views` for each contest sorted by `contest_id`. Exclude the contest from the result if all four sums are zero.  
Note: A contest may be linked to multiple colleges, but each college only hosts one screening contest.

---

## Input Format

The database contains the following tables:

### Contests
| Column Name | Type    |
|-------------|---------|
| contest_id  | Integer |
| hacker_id   | Integer |
| name        | String  |

### Colleges
| Column Name | Type    |
|-------------|---------|
| college_id  | Integer |
| contest_id  | Integer |

### Challenges
| Column Name | Type    |
|-------------|---------|
| challenge_id | Integer |
| college_id   | Integer |

### View_Stats
| Column Name       | Type    |
|-------------------|---------|
| challenge_id      | Integer |
| total_views       | Integer |
| total_unique_views| Integer |

### Submission_Stats
| Column Name              | Type    |
|--------------------------|---------|
| challenge_id             | Integer |
| total_submissions        | Integer |
| total_accepted_submissions | Integer |

---

## Sample Input

**Contests**
| contest_id | hacker_id | name  |
|------------|-----------|-------|
| 66406      | 17973     | Rose  |
| 66556      | 79153     | Angela|
| 94828      | 80275     | Frank |

**Colleges**
| college_id | contest_id |
|------------|------------|
| 11219      | 66406      |
| 32473      | 66556      |
| 56685      | 94828      |

**Challenges**
| challenge_id | college_id |
|--------------|------------|
| 18765        | 11219      |
| 47127        | 11219      |
| 38129        | 32473      |
| 58231        | 56685      |
| 50373        | 56685      |

**View_Stats**
| challenge_id | total_views | total_unique_views |
|--------------|-------------|--------------------|
| 18765        | 60          | 20                 |
| 47127        | 96          | 36                 |
| 38129        | 11          | 10                 |
| 58231        | 41          | 15                 |
| 50373        | 0           | 0                  |

**Submission_Stats**
| challenge_id | total_submissions | total_accepted_submissions |
|--------------|-------------------|----------------------------|
| 18765        | 30                | 10                         |
| 47127        | 81                | 29                         |
| 38129        | 0                 | 0                          |
| 58231        | 150               | 38                         |
| 50373        | 0                 | 0                          |

---

## Sample Output

| contest_id | hacker_id | name   | total_submissions | total_accepted_submissions | total_views | total_unique_views |
|------------|-----------|--------|-------------------|----------------------------|-------------|--------------------|
| 66406      | 17973     | Rose   | 111               | 39                         | 156         | 56                 |
| 66556      | 79153     | Angela | 0                 | 0                          | 11          | 10                 |
| 94828      | 80275     | Frank  | 150               | 38                         | 41          | 15                 |

---

## Explanation

- Contest **66406** belongs to college **11219**, which has challenges **18765** and **47127**. Summing their stats:  
  - Total Submissions = 30 + 81 = 111  
  - Total Accepted Submissions = 10 + 29 = 39  
  - Total Views = 60 + 96 = 156  
  - Total Unique Views = 20 + 36 = 56  

- Contest **66556** belongs to college **32473**, which has challenge **38129**. Summing stats:  
  - Total Submissions = 0  
  - Total Accepted Submissions = 0  
  - Total Views = 11  
  - Total Unique Views = 10  

- Contest **94828** belongs to college **56685**, which has challenges **58231** and **50373**. Summing stats:  
  - Total Submissions = 150 + 0 = 150  
  - Total Accepted Submissions = 38 + 0 = 38  
  - Total Views = 41 + 0 = 41  
  - Total Unique Views = 15 + 0 = 15  

---

## Notes / Constraints

- A contest may be linked to multiple colleges.  
- Each college hosts exactly one contest.  
- Contests with all four aggregated sums equal to zero must be excluded.  
- Output must be sorted by `contest_id`.  
