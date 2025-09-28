# sqlpractice_27_Allergies_By_Popularity

**sql-practice — Allergies by Popularity**  

Tracking the most common patient allergies helps hospitals prepare treatments, adjust pharmacy stock, and ensure patient safety.  

**Task:**  
Show all distinct allergies from the `patients` table along with the total number of patients who have each allergy. Exclude `NULL` values. Order the results by:  
1. Number of patients in **descending** order (most common allergies first)  
2. Allergy name in **ascending** order (alphabetically) for ties  

**Assumptions:**  
- `allergies` column may contain `NULL`, which should be excluded.  
- Patients may have only one allergy recorded in this column.  

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
- `allergies` (TEXT)  
- `total_patients` (INT)  
- Example rows:  
  - `Penicillin 1082`  
  - `Codeine 305`  
  - `Sulfa 157`  
  - `ASA 99`  
  - `Sulfa Drugs 71`  
  - `Peanuts 52`  
  - `Iodine 48`  