# sqlpractice_32_Admissions_By_Day_Of_Month

**sql-practice — Admissions By Day of Month**  

Hospitals often want to identify trends in patient admissions, such as which days of the month see the most activity. This helps with staffing and resource planning.  

**Task:**  
Show all days of the month (`1–31`) along with the count of admissions (`admission_date`) that occurred on each day. Sort the results from the day with the **highest number of admissions** to the **lowest**.  

**Assumptions:**  
- `admission_date` is a valid `DATE` field.  
- Days without any admissions should show `0`.  

**Tables:**  
`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

**Output:**  
- `day_of_month` (integer 1–31 extracted from `admission_date`)  
- `admission_count` (number of admissions on that day)  
- Sorted by `admission_count` descending.  

**Example Output:**  
| day_of_month | admission_count |  
|--------------|-----------------|  
| 11           | 184             |  
| 4            | 184             |  
| 9            | 183             |  
| 2            | 180             |  
| 12           | 179             |  
| 6            | 179             |  
| 16           | 177             |  
