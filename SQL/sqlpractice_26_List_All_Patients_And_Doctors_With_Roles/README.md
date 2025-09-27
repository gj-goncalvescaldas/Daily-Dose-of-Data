# sqlpractice_26_List_All_Patients_And_Doctors_With_Roles

**sql-practice — List All Patients and Doctors With Roles**  

Healthcare systems often need to generate a unified list of both patients and doctors with their respective roles for reporting or directory purposes.  

**Task:**  
Show `first_name`, `last_name`, and `role` of every person who is either a **patient** or a **doctor**.  
- For patients, the role should be displayed as `"Patient"`.  
- For doctors, the role should be displayed as `"Doctor"`.  

**Assumptions:**  
- Both patients and doctors share similar identifying fields (`first_name`, `last_name`).  
- Patients and doctors are stored in separate tables.  
- No deduplication is required across tables — if a person exists in both, they appear twice (once per role).  

**Tables:**  
`patients`  
- `patient_id` (INT, primary key)  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `gender` (CHAR(1))  
- `birth_date` (DATE)  
- `city` (TEXT)  
- `province_id` (CHAR(2))  
- `allergies` (TEXT)  
- `height` (INT)  
- `weight` (INT)  

`doctors`  
- `doctor_id` (INT, primary key)  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `specialty` (TEXT)  

**Output:**  
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `role` (TEXT → either "Patient" or "Doctor")  
- Example rows:  
  - `Donald Waterfield Patient`  
  - `Mickey Baasha Patient`  
  - `Drake Howard Doctor`  
  - `Sue Falcon Doctor`