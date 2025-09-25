# sqlpractice_5_Update_Null_Allergies

**sql-practice — Update Null Allergies to 'NKA'**  

To ensure consistency in patient records, it is often necessary to replace `NULL` values in the `allergies` column with a standard placeholder such as `'NKA'` (No Known Allergies).  

**Task:**  
Update the `patients` table so that any patient whose `allergies` column is `NULL` will have it set to `'NKA'`.  

**Assumptions:**  
- Only `NULL` values should be updated; existing allergy information should remain unchanged.  

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
- No output is required; this is an `UPDATE` operation.  
- After execution, all `NULL` values in `allergies` should be replaced with `'NKA'`.