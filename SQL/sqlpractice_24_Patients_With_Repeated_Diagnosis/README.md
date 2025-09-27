# sqlpractice_24_Patients_With_Repeated_Diagnosis

**sql-practice — Patients With Repeated Diagnosis**  

Hospitals often track repeat admissions to monitor chronic conditions and recurring health issues. This query identifies patients who were admitted multiple times for the **same diagnosis**.  

**Task:**  
Show `patient_id` and `diagnosis` for patients who appear more than once with the same diagnosis in the admissions table.  

**Assumptions:**  
- A repeat admission means **at least 2 rows** for the same `patient_id` and identical `diagnosis`.  
- Ignore variations in spelling or case — assume diagnosis text is consistent.  

**Tables:**  
`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

**Output:**  
- `patient_id` (INT)  
- `diagnosis` (TEXT)  
- Only patients with duplicate diagnoses should be returned.  
- Example rows (from hints):  
  - `137 Pregnancy`  
  - `320 Pneumonia`  
  - `1577 Congestive Heart Failure`  
  - `2004 Left Shoulder Rotator Cuff Repair`  
  - `2859 Severed Spine At C3`  
  - `3012 Appendicitis`  
  - `3367 Pyelonephritis`  
  - `3468 Congestive Heart Failure`  