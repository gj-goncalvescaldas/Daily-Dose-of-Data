# sqlpractice_42_Admissions_Per_Day_Statistics

**sql-practice — Admissions Per Day Statistics**  

Hospital administrators often need to evaluate patient flow over time. A quick way is to analyze the maximum, minimum, and average number of daily admissions.  

**Task:**  
Display a **single row** with `max_visits`, `min_visits`, and `average_visits` where the maximum, minimum, and average number of admissions per day is calculated. The average must be rounded to 2 decimal places.  

**Assumptions:**  
- Each row in the `admissions` table represents one patient admission.  
- Use `admission_date` to group visits per day.  

**Hints:**  
- Use `COUNT(*)` grouped by `admission_date`.  
- Aggregate the grouped results with `MAX()`, `MIN()`, and `AVG()`.  
- Apply rounding for average.  

**Sample Output:**  

max_visits | min_visits | average_visits

30 | 4 | 13.88