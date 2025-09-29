# sqlpractice_38_List_Admissions_With_Patient_And_Doctor_Names

**sql-practice — List Admissions With Patient and Doctor Names**  

Hospitals often need to generate reports linking patients’ admissions with their diagnosing doctors for auditing and case review purposes. This helps in verifying medical responsibility and tracking treatment history.  

**Task:**  
For every admission, display the patient’s full name, their admission diagnosis, and the doctor’s full name who diagnosed their problem.  

**Assumptions:**  
- Each admission is associated with exactly one patient and one attending doctor.  
- Patient names are stored separately in the `patients` table, while doctor names are stored in the `doctors` table.  
- Output should concatenate first and last names for both patients and doctors.  

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

`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

`doctors`  
- `doctor_id` (INT, primary key)  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `specialty` (TEXT)  

**Output:**  
- `patient_name` (patient’s full name: first + last)  
- `diagnosis`  
- `doctor_name` (doctor’s full name: first + last)  
- Sorted by `patient_name` ascending, and for patients with multiple admissions, by `admission_date` ascending.  