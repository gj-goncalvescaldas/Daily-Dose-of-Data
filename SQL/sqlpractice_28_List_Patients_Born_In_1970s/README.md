# sqlpractice_28_List_Patients_Born_In_1970s

**sql-practice — List Patients Born in the 1970s**  

Hospitals often need to generate demographic reports of patients by decade of birth for analysis and planning. This query extracts all patients who were born in the 1970s and orders them by their birth date.  

**Task:**  
Show each patient's `first_name`, `last_name`, and `birth_date` where the birth year falls between 1970 and 1979. Sort the list starting from the earliest `birth_date`.  

**Assumptions:**  
- Birth years are stored in the `birth_date` column as a proper `DATE`.  
- All patient records have valid dates.  

**Tables:**  
`patients`  
- `patient_id` (INT, primary key)  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `gender` (CHAR(1))  
- `birth_date` (DATE)  
- `city` (TEXT)  
- `province_id` (CHAR(2), primary key)  
- `allergies` (TEXT)  
- `height` (INT)  
- `weight` (INT)  

**Output:**  
- `first_name`  
- `last_name`  
- `birth_date`  
- Ordered by `birth_date` ascending.  