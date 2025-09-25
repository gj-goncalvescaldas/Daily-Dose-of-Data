# sqlpractice_16_Patients_Allergies_In_Hamilton

**sql-practice — Find Patients With Allergies in Hamilton**  

Medical teams may need to filter patients who have known allergies in a specific city to provide targeted care or alerts.  

**Task:**  
Show `first_name`, `last_name`, and `allergies` for patients whose `allergies` column is not `NULL` and who live in the city `'Hamilton'`.  

**Assumptions:**  
- Only patients with non-`NULL` values in `allergies` should be included.  
- The city match is case-sensitive depending on the database collation.  

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
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `allergies` (TEXT)  
- Example rows: `Jiji Sharma Penicillin`, `Tom Halliwell Ragweed`, `Nino Andrews Peanuts` 