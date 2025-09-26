# sqlpractice_22_Count_Male_And_Female_Patients

**sql-practice — Count Male and Female Patients in One Row**  

Hospitals often need quick demographic summaries of patient populations. This query counts how many patients are male and how many are female, showing both results in a single row.  

**Task:**  
Show the total number of male patients and the total number of female patients in the `patients` table, displayed side by side in the same row.  

**Assumptions:**  
- The `gender` column only contains `'M'` or `'F'`.  
- Null or other values do not exist in the column.  

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
- `male_count` (INT)  
- `female_count` (INT)  
- Example row:  
  - `2468   2062`  