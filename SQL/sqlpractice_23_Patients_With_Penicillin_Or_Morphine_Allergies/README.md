# sqlpractice_23_Patients_With_Penicillin_Or_Morphine_Allergies

**sql-practice — Patients With Penicillin or Morphine Allergies**  

Hospitals often need to quickly identify patients with serious allergies to ensure safe medication administration. This query extracts patient names and allergies where patients are allergic to either `'Penicillin'` or `'Morphine'`.  

**Task:**  
Show `first_name`, `last_name`, and `allergies` for patients whose `allergies` value is either `'Penicillin'` or `'Morphine'`. Order results by:  
1. `allergies` (ascending)  
2. `first_name` (ascending)  
3. `last_name` (ascending)  

**Assumptions:**  
- Only exact matches `'Penicillin'` and `'Morphine'` are considered.  
- If multiple patients share the same allergy, names are sorted alphabetically.  

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
- Example rows:  
  - `Briareos Hayes Morphine`  
  - `Christine Argyros Morphine`  
  - `Griselda Hopper Morphine`  
  - `Henry Huang Morphine`  
  - `Janice Redfield Morphine`  