# sqlpractice_37_Total_Patients_By_Province

**sql-practice — Total Patients by Province**  

Healthcare systems often need to know how many patients are registered in each province to manage resources effectively. This query aggregates patient counts per province.  

**Task:**  
Display the total number of patients for each province. Order the results by patient count in **descending** order.  

**Assumptions:**  
- Every patient has a valid `province_id`.  
- The `provinces` table provides the mapping from `province_id` to `province_name`.  

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

`provinces`  
- `province_id` (CHAR(2), primary key)  
- `province_name` (TEXT)  

**Output:**  
- `province_name`  
- `patient_count` (number of patients in that province)  
- Ordered by `patient_count` descending.  

**Example Output:**  
| province_name     | patient_count |  
|-------------------|---------------|  
| Ontario           | 4298          |  
| Nova Scotia       | 60            |  
| British Columbia  | 49            |  
| Alberta           | 47            |  
| Manitoba          | 31            | 