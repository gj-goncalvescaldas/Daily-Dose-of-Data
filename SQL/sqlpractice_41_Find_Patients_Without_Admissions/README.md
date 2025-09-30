# sqlpractice_41_Find_Patients_Without_Admissions

**sql-practice — Find Patients Without Admissions**  

Hospitals often need to identify patients who are registered but have never been admitted. This query helps track such patients for follow-up, administrative checks, or auditing purposes.  

**Task:**  
Show the `patient_id`, `first_name`, and `last_name` of patients who do not have any corresponding records in the `admissions` table.  

**Assumptions:**  
- A patient is considered "without admission" if their `patient_id` does not exist in `admissions.patient_id`.  
- Only basic details of the patient are required.  

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

**Output:**  
- `patient_id`  
- `first_name`  
- `last_name`  
- Results should be sorted by `patient_id` ascending.  

**Sample Output:**  
| patient_id | first_name | last_name |  
|------------|------------|-----------|  
| 2          | Mickey     | Baasha    |  
| 4          | Blair      | Diaz      |  
| 5          | Charles    | Wolfe     |  
| 14         | Rick       | Bennett   |  
| 19         | John       | West      |  