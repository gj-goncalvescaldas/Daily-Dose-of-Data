# sqlpractice_25_Patient_Count_By_City

**sql-practice — Count Patients by City**  

Hospitals and clinics often need to analyze patient distribution by city to allocate resources, plan outreach, or assess service coverage.  

**Task:**  
Show `city` and the total number of patients in that city. Order the results:  
1. By the total number of patients in **descending order** (most patients first)  
2. Then by `city` name in **ascending order**  

**Assumptions:**  
- Each patient belongs to only one city.  
- Include all cities with at least one patient.  

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

**Output:**  
- `city` (TEXT)  
- `total_patients` (INT)  
- Example rows:  
  - `Hamilton 1938`  
  - `Toronto 317`  
  - `Burlington 276`  
  - `Brantford 147`  