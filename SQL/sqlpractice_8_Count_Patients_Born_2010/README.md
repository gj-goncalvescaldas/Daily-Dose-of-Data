# sqlpractice_8_Count_Patients_Born_2010

**sql-practice — Count Patients Born in 2010**  

Hospitals may need demographic statistics on patients born in a specific year for planning pediatric care or vaccination programs.  

**Task:**  
Count the number of patients whose `birth_date` is in the year 2010.  

**Assumptions:**  
- The `birth_date` column is of type `DATE`.  
- Only the year portion of `birth_date` should be considered.  

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
- `patient_count` (INT)  
- Example: `55`  