# sqlpractice_19_FirstNames_Start_End_S_6Plus

**sql-practice — Find Patients Whose First Name Starts and Ends With 'S'**  

For certain name-based analyses or patterns, it may be useful to filter patients whose names start and end with a specific letter and meet a minimum length requirement.  

**Task:**  
Show `patient_id` and `first_name` for patients whose `first_name` starts and ends with `'s'` (case-sensitive) and is at least 6 characters long.  

**Assumptions:**  
- Case-sensitive match for `'s'`.  
- Only include names with length ≥ 6 characters.  

**Tables:**  
`patients`  
- `patient_id` (INT, primary key)  
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
- `patient_id` (INT)  
- `first_name` (TEXT)  
- Example rows:  
  - `496 Spiros`  
  - `629 Spiros`  
  - `648 Stanislaus`  
  - `1273 Stanislaus`  
  - `1789 Seamus`  
  - `1926 Stanislaus`  
  - `1996 Stanislaus`  