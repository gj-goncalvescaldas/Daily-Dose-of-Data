**sql-practice — Doctor Admissions by Year**

Hospital management wants to analyze how many admissions each doctor initiated every year.  
You need to summarize the total number of admissions handled by each doctor, broken down by year.

**Task:**  
For each doctor, show:
- Their ID,  
- Full name,  
- Specialty,  
- The year of admission,  
- The total number of admissions that doctor started in that year.

**Assumptions:**  
- Each row in `admissions` represents a patient admitted under a specific doctor.  
- The `admission_date` column contains valid date values.  
- Doctors are stored in a separate table called `doctors`.

**Tables:**  

`admissions`  
- `patient_id` (INT)  
- `admission_date` (DATE)  
- `discharge_date` (DATE)  
- `diagnosis` (TEXT)  
- `attending_doctor_id` (INT)  

`doctors`  
- `doctor_id` (INT)  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `specialty` (TEXT)  

**Output:**  
- `doctor_id`  
- `doctor_full_name` (concatenation of first and last names)  
- `specialty`  
- `year` (from `admission_date`)  
- `total_admissions` (count of admissions for that doctor in that year)

**Expected Output Example:**  
| doctor_id | doctor_full_name | specialty         | year | total_admissions |
|------------|------------------|-------------------|------|------------------|
| 1          | Claude Walls     | Internist         | 2018 | 105              |
| 1          | Claude Walls     | Internist         | 2019 | 109              |
| 2          | Joshua Green     | Cardiologist      | 2018 | 104              |
| 2          | Joshua Green     | Cardiologist      | 2019 | 83               |
| 3          | Miriam Tregre    | General Surgeon   | 2018 | 111              |          