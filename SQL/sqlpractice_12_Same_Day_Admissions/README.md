# sqlpractice_12_Same_Day_Admissions

**sql-practice — Find Same-Day Admissions**  

Hospitals may need to identify admissions where patients were admitted and discharged on the same day, for example, for outpatient or day procedures.  

**Task:**  
Show all columns from the `admissions` table where the `admission_date` is the same as the `discharge_date`.  

**Assumptions:**  
- Only rows where `admission_date` equals `discharge_date` should be returned.  
- Both dates are stored in `DATE` format.  

**Tables:**  
`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

**Output:**  
- All columns from the `admissions` table.  
- Example row: `1 2018-09-20 2018-09-20 Ineffective Breathin Pattern R/T Fluid Accumulatio 24`  