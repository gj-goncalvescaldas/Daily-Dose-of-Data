# sqlpractice_33_Most_Recent_Admission_For_Patient

**sql-practice — Most Recent Admission for Patient**  

Healthcare providers often need to quickly check the latest admission details of a specific patient. This query retrieves the most recent admission record for a given patient ID.  

**Task:**  
Show **all columns** from the `admissions` table for patient with `patient_id = 542`, but only return the row with the **most recent `admission_date`**.  

**Assumptions:**  
- A patient can have multiple admissions.  
- If there are ties (multiple admissions on the same most recent date), all such rows should be included.  

**Tables:**  
`admissions`  
- `patient_id` (INT, primary key)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT, primary key)  

**Output:**  
- All columns from the `admissions` table.  
- Filtered to patient `542`.  
- Only the most recent admission record(s).  

**Example Output:**  
| patient_id | admission_date | discharge_date | diagnosis       | attending_doctor_id |  
|------------|----------------|----------------|-----------------|----------------------|  
| 542        | 2019-04-06     | 2019-04-09     | Abdominal Pain  | 14                   | 