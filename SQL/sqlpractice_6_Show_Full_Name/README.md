# sqlpractice_6_Show_Full_Name

**sql-practice — Concatenate First and Last Name**  

For reporting or display purposes, it is common to combine the first and last names of patients into a single full name field.  

**Task:**  
Show a single column that concatenates `first_name` and `last_name` into `full_name` for all patients.  

**Assumptions:**  
- A space should separate the first and last name.  
- All patients have both `first_name` and `last_name` filled.  

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
- `full_name` (TEXT)  
- Example: `Donald Waterfield`, `Mickey Baasha`  
- No specific sorting required.  