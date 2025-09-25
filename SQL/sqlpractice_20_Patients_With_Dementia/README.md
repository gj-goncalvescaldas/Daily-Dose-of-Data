# sqlpractice_20_Patients_With_Dementia

**sql-practice — Find Patients With Diagnosis 'Dementia'**  

Healthcare providers may need to identify patients with a specific diagnosis for care management or reporting purposes. This query joins the patient information with their admission records to find those diagnosed with `'Dementia'`.  

**Task:**  
Show `patient_id`, `first_name`, and `last_name` for patients whose primary diagnosis in the `admissions` table is `'Dementia'`.  

**Assumptions:**  
- A patient may have multiple admissions; include all patients who have at least one admission with this diagnosis.  
- Only exact matches for `'Dementia'` are considered.  

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

`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

**Output:**  
- `patient_id` (INT)  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- Example rows:  
  - `160 Miranda Delacour`  
  - `178 David Bustamonte`  
  - `207 Matt Celine`  
  - `613 Jaki Granger`  
  - `836 Montana Vimes`  