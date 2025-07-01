# linkedin-data-science-skills

Given a table named `candidates` that contains information about each candidate and their skills, your task is to identify the candidates who possess **all** the required skills for a Data Science job opening.

The required skills are:
- Python
- Tableau
- PostgreSQL

You need to write a query that returns a list of candidate IDs who have **all three** of the required skills. The output should be sorted in ascending order by `candidate_id`.

### Table: candidates

| Column Name   | Type     |
|---------------|----------|
| candidate_id  | integer  |
| skill         | varchar  |

### Example Input

| candidate_id | skill       |
|--------------|-------------|
| 123          | Python      |
| 123          | Tableau     |
| 123          | PostgreSQL  |
| 234          | R           |
| 234          | PowerBI     |
| 234          | SQL Server  |
| 345          | Python      |
| 345          | Tableau     |

### Example Output

| candidate_id |
|--------------|
| 123          |
