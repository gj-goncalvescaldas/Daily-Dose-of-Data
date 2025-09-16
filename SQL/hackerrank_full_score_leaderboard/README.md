# hackerrank_full-score-leaderboard

**HackerRank — Full Score Leaderboard**

Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard!  

**Task:**  
Write a query to print the respective `hacker_id` and `name` of hackers who achieved **full scores for more than one challenge**.  
- Order your output in **descending order** by the total number of challenges in which the hacker earned a full score.  
- If more than one hacker received full scores in the same number of challenges, then sort them by **ascending hacker_id**.  

---

**Tables:**

- `Hackers`  
  - `hacker_id` (int): ID of the hacker  
  - `name` (varchar): Name of the hacker  

- `Difficulty`  
  - `difficulty_level` (int): Level of difficulty of the challenge  
  - `score` (int): Maximum score for this difficulty  

- `Challenges`  
  - `challenge_id` (int): Challenge ID  
  - `hacker_id` (int): ID of hacker who created the challenge  
  - `difficulty_level` (int): Level of difficulty for the challenge  

- `Submissions`  
  - `submission_id` (int): ID of the submission  
  - `hacker_id` (int): ID of hacker who made the submission  
  - `challenge_id` (int): Challenge ID of the submission  
  - `score` (int): Score received in the submission  

---

**Output Format:**  
- Print the `hacker_id` and `name` of hackers who earned full scores in **more than one challenge**.  
- Output must be sorted by:  
  1. Number of challenges solved with full score (**descending**)  
  2. `hacker_id` (**ascending**)  

---

**Sample Input (simplified):**  

*Hackers*  
