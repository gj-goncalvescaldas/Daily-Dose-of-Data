# sqlpractice_11_Total_Number_of_Admissions

**sql-practice — Count Total Admissions**  

Hospitals often need to track the total number of patient admissions for reporting and resource planning.  

**Task:**  
Show the total number of admissions in the `admissions` table.  

**Assumptions:**  
- Each row in the `admissions` table represents a unique patient admission.  
- Only count the rows; do not consider duplicate patient entries unless each represents a separate admission.  

**Tables:**  
`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

**Output:**  
- `total_admissions` (INT)  
- Example: `5067`