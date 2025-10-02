# sqlpractice_45_Epilepsy_Patients_With_Lisa_Doctor

**sql-practice — Epilepsy Patients With Doctor Lisa**  

Hospitals often need to identify specific cases where patients are treated by particular doctors for certain conditions. This helps in reporting, auditing, and case review processes.  

**Task:**  
Show `patient_id`, `first_name`, `last_name`, and the attending doctor's `specialty`.  
- Only include patients who have a `diagnosis` of `'Epilepsy'`.  
- The attending doctor must have the `first_name = 'Lisa'`.  

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

`doctors`  
- doctor_id (INT, PK)  
- first_name (TEXT)  
- last_name (TEXT)  
- specialty (TEXT)  

**Hints:**  
- Join `patients` with `admissions` using `patient_id`.  
- Join `admissions` with `doctors` using `attending_doctor_id = doctor_id`.  
- Filter with `diagnosis = 'Epilepsy'` and `doctors.first_name = 'Lisa'`.  

**Sample Output:**  

patient_id | first_name | last_name | specialty

468 | Frank | Anderson | Obstetrician/Gynecologist
701 | Precious | Ashton | Obstetrician/Gynecologist