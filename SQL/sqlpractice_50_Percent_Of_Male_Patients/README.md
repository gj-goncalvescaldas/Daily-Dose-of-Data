**sql-practice — Percent of Male Patients**

You are analyzing hospital records to determine the gender distribution of patients.  
You need to calculate the percentage of patients whose gender is marked as `'M'`.

**Task:**  
Show the percentage of patients that have `'M'` as their gender.  
Round the result to **two decimal places** and display it in **percent format** (e.g., `54.48%`).

**Assumptions:**  
- The `gender` column contains only `'M'` or `'F'`.  
- There are no missing (`NULL`) gender values.

**Table:**  
`patients`  
- `patient_id` (INT)  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `gender` (CHAR(1))  
- `birth_date` (DATE)  
- `city` (TEXT)  
- `province_id` (CHAR(2))  
- `allergies` (TEXT)  
- `height` (INT)  
- `weight` (INT)  

**Output:**  
- `percent_of_male_patients` — the percentage of patients whose gender is `'M'`, rounded to two decimal places, in percent format.  

**Expected Output Example:**  
| percent_of_male_patients |
|---------------------------|
| 54.48%                   |

