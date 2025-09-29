
# sqlpractice_36_Doctor_First_And_Last_Admissions

**sql-practice — Doctor First and Last Admissions**  

Hospitals may need to track the service history of doctors, including when they first and most recently attended a patient admission. This helps with evaluating workload periods and career timelines.  

**Task:**  
For each doctor, display their `doctor_id`, full name (`first_name` + `last_name`), the earliest `admission_date` they attended, and the latest `admission_date` they attended.  

**Assumptions:**  
- Every admission has an associated doctor (`attending_doctor_id`).  
- Each doctor’s `doctor_id` matches `attending_doctor_id` in the `admissions` table.  
- Doctors with no admissions should be excluded.  

**Tables:**  
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
- `doctor_id`  
- `full_name` (concatenated as `"first_name last_name"`)  
- `first_admission_date` (earliest `admission_date`)  
- `last_admission_date` (latest `admission_date`)  

**Example Output:**  
| doctor_id | full_name       | first_admission_date | last_admission_date |  
|-----------|-----------------|----------------------|---------------------|  
| 1         | Claude Walls    | 2018-06-10           | 2019-06-03          |  
| 2         | Joshua Green    | 2018-06-06           | 2019-06-03          |  
| 3         | Miriam Tregre   | 2018-06-06           | 2019-06-03          | 