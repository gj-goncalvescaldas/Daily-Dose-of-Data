# sqlpractice_46_Generate_Temporary_Passwords

**sql-practice — Generate Temporary Passwords**  

Patients who have been admitted at least once can access their medical documents online. For security, they are issued a **temporary password** upon their first admission.  

The temporary password format is:  
1. `patient_id`  
2. Numerical length of the patient's `last_name`  
3. Year of the patient's `birth_date`  

**Task:**  
Show the `patient_id` and the generated `temp_password` for all patients who have at least one record in the `admissions` table.  

**Tables:**  
`patients`  
- patient_id (INT, PK)  
- first_name (TEXT)  
- last_name (TEXT)  
- gender (CHAR(1))  
- birth_date (DATE)  
- city (TEXT)  
- province_id (CHAR(2), PK)  
- allergies (TEXT)  
- height (INT)  
- weight (INT)  

`admissions`  
- patient_id (INT, PK)  
- admission_date (DATE)  
- discharge_date (DATE)  
- diagnosis (TEXT)  
- attending_doctor_id (INT, PK)  

**Hints:**  
- Use `JOIN` to link `patients` with `admissions` on `patient_id`.  
- Use `LENGTH(last_name)` to calculate the number of characters.  
- Extract the year with `YEAR(birth_date)` (or equivalent function depending on SQL dialect).  
- Concatenate in the correct order to build the `temp_password`.  

**Sample Output:**  

patient_id | temp_password

12 | 1261990
45 | 4581975
87 | 8732001