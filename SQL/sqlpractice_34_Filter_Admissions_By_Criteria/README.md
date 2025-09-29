# sqlpractice_34_Filter_Admissions_By_Criteria

**sql-practice — Filter Admissions by Criteria**  

In medical reporting, sometimes admissions must be filtered based on complex business rules involving both patient and doctor identifiers. This query applies combined filtering criteria to select specific records.  

**Task:**  
Show `patient_id`, `attending_doctor_id`, and `diagnosis` for admissions that satisfy **either** of the following conditions:  
1. `patient_id` is an **odd number** and `attending_doctor_id` is **1, 5, or 19**.  
2. `attending_doctor_id` contains a **2** and the length of `patient_id` is **3 digits**.  

**Assumptions:**  
- `patient_id` is an integer. For the second condition, check the string length of `patient_id`.  
- An admission can satisfy one or both conditions.  
- Output should include all matching rows.  

**Tables:**  
`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

**Output:**  
- `patient_id`  
- `attending_doctor_id`  
- `diagnosis`  

**Example Output:**  
| patient_id | attending_doctor_id | diagnosis                 |  
|------------|----------------------|---------------------------|  
| 9          | 19                   | Ruptured Appendicitis     |  
| 13         | 1                    | Renal Failure             |  
| 15         | 5                    | Hiatal Hernia             |  
| 31         | 19                   | Cardiovascular Disease    |  