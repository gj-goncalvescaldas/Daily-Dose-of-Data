# sqlpractice_1_Find_Male_Patients

**sql-practice — Find Male Patients**  

In a healthcare database, it is often necessary to filter patient records by demographic attributes for reporting or analysis. Here, we need to retrieve the basic details of male patients only.  

**Task:**  
Show the first name, last name, and gender of all patients whose gender is `'M'`.  

**Assumptions:**  
- The `gender` column only contains `'M'` (Male) or `'F'` (Female).  
- Patient names are stored in `first_name` and `last_name` fields.  

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
- `gender` (CHAR(1))  
- No specific sorting required, but output may be ordered alphabetically by last name if needed.  
