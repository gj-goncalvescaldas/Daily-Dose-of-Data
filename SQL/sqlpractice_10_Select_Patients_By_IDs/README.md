# sqlpractice_10_Select_Patients_By_IDs

**sql-practice — Select Patients by Specific IDs**  

Sometimes, reports or analyses require fetching data for a specific set of patients by their IDs. This query retrieves all details for these patients.  

**Task:**  
Show all columns for patients whose `patient_id` is one of the following: `1, 45, 534, 879, 1000`.  

**Assumptions:**  
- Only the listed patient IDs are needed.  
- If an ID does not exist in the table, it should simply be ignored.  

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
- All columns from the `patients` table.  
- Example row: `1 Donald Waterfield M 1963-02-12 Barrie ON NULL 156 65`