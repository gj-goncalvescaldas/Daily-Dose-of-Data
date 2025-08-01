# linkedin-duplicate-job-listings

**Platform/Source**: LinkedIn — Duplicate Job Listings

You're analyzing job listings posted by companies on LinkedIn to identify posting behavior.

**Task:**  
Write a query to count how many companies have posted duplicate job listings.

**Assumptions:**  
- Duplicate job listings are defined as listings from the same company with both identical `title` and `description`.

**Tables:**  
`job_listings`  
- `job_id` (integer)  
- `company_id` (integer)  
- `title` (string)  
- `description` (string)

**Output:**  
- One column: `duplicate_companies`



