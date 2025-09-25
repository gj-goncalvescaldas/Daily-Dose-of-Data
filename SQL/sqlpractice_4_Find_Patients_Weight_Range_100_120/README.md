# sqlpractice_4_Find_Patients_Weight_Range_100_120

**sql-practice — Find Patients With Weight Between 100 and 120**  

Healthcare providers may need to identify patients within a specific weight range for nutrition plans, medication dosing, or medical studies. This query selects patients whose weight falls between 100 and 120 inclusive.  

**Task:**  
Show the `first_name` and `last_name` of patients whose `weight` is between 100 and 120 inclusive.  

**Assumptions:**  
- The `weight` column is in integer units (e.g., pounds or kilograms).  
- Include both boundary values: 100 and 120.  

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
- Sorting is optional; results may be ordered alphabetically by `last_name` if desired.  