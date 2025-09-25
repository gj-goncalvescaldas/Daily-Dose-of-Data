# sqlpractice_2_Find_Patients_Without_Allergies

**sql-practice — Find Patients Without Allergies**  

Hospitals often need to identify patients who have no known allergies for medical procedures or prescriptions. This query extracts such patients’ details from the database.  

**Task:**  
Show the first name and last name of patients whose `allergies` field is `NULL`.  

**Assumptions:**  
- The `allergies` column is `NULL` when the patient has no allergies.  
- If the column contains an empty string (`''`), it should not be considered as no allergies unless explicitly handled.  

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
- No specific sorting required, but results may be ordered alphabetically by `last_name` if needed.  