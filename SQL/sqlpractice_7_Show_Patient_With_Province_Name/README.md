# sqlpractice_7_Show_Patient_With_Province_Name

**sql-practice — Show Patient Names With Full Province Name**  

When generating patient reports, it is more readable to display the full province name instead of its abbreviation. This query combines patient details with province information.  

**Task:**  
Show `first_name`, `last_name`, and the full province name for each patient. Replace the `province_id` code with the corresponding `province_name`.  

**Assumptions:**  
- Every patient has a valid `province_id` that matches the `province_id` in the `provinces` table.  
- The `province_name` column contains the full name of the province.  

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

`provinces`  
- `province_id` (CHAR(2), primary key)  
- `province_name` (TEXT)  

**Output:**  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `province_name` (TEXT)  
- No specific sorting required; optionally can sort alphabetically by `last_name`.  
1