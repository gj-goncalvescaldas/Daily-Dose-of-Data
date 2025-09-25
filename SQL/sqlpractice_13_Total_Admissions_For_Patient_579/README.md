# sqlpractice_13_Total_Admissions_For_Patient_579

**sql-practice — Count Admissions for a Specific Patient**  

Tracking the number of admissions for an individual patient is important for patient history reviews and resource management.  

**Task:**  
Show the `patient_id` and the total number of admissions for `patient_id = 579`.  

**Assumptions:**  
- Count each row in the `admissions` table for this patient.  
- If the patient has no admissions, the count should return 0 (optional depending on SQL).  

**Tables:**  
`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

**Output:**  
- `patient_id` (INT)  
- `total_admissions` (INT)  
- Example: `579 2` 