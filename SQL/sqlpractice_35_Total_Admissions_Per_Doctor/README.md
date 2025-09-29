# sqlpractice_35_Total_Admissions_Per_Doctor

**sql-practice — Total Admissions per Doctor**  

Hospitals often need to track the workload of doctors by counting how many admissions each has attended. This helps with performance monitoring and resource allocation.  

**Task:**  
Show each doctor’s `first_name`, `last_name`, and the total number of admissions they attended.  

**Assumptions:**  
- Every admission has an `attending_doctor_id`.  
- Each doctor in the `doctors` table may appear multiple times in admissions.  
- Count should reflect the total admissions per doctor.  

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
- `first_name`  
- `last_name`  
- `admission_count` (total number of admissions attended)  
- Sorted optionally by `admission_count` descending.  

**Example Output:**  
| first_name | last_name  | admission_count |  
|------------|------------|-----------------|  
| Claude     | Walls      | 214             |  
| Joshua     | Green      | 187             |  
| Miriam     | Tregre     | 168             |  
| James      | Russo      | 197             |  
| Scott      | Hill       | 179             |  
| Tasha      | Phillips   | 168             |  
| Hazel      | Patterson  | 206             |  