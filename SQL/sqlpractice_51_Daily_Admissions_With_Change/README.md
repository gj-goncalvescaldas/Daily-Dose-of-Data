**sql-practice — Daily Admissions with Change**

You are reviewing hospital admission data to monitor daily trends.  
For each date, you want to see how many patients were admitted and how that number changed compared to the previous day.

**Task:**  
For each `admission_date`, display:
1. The total number of admissions that occurred on that date.  
2. The change in admissions compared to the previous date (difference from the previous day's total).

**Assumptions:**  
- Each record in the table represents one patient admission.  
- There is at least one admission per day in the dataset.  
- Dates are consecutive with no missing days in between.

**Table:**  
`admissions`  
- `patient_id` (INT)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT)  

**Output:**  
- `admission_date` — the date of the admission.  
- `total_admissions` — total number of admissions for that date.  
- `change_from_previous` — difference between the current day’s admissions and the previous day’s total.  

**Expected Output Example:**  
| admission_date | total_admissions | change_from_previous |
|----------------|------------------|----------------------|
| 2018-06-06     | 17               | NULL                 |
| 2018-06-07     | 9                | -8                   |
| 2018-06-08     | 9                | 0                    |
| 2018-06-09     | 18               | 9                    |
| 2018-06-10     | 12               | -6                   |
| 2018-06-11     | 22               | 10                   |
| 2018-06-12     | 9                | -13                  |
| 2018-06-13     | 12               | 3                    |
| 2018-06-14     | 14               | 2                    |
| 2018-06-15     | 11               | -3                   |