
# sqlpractice_14_Unique_Cities_In_NS

**sql-practice — List Unique Cities in Province 'NS'**  

Hospitals may need to analyze the geographic distribution of their patients. This query identifies all unique cities within a specific province.  

**Task:**  
Show unique `city` values for patients whose `province_id` is `'NS'`.  

**Assumptions:**  
- Only patients with `province_id = 'NS'` should be considered.  
- Each city should appear only once in the output.  

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
- Example cities: `Port Hawkesbury`, `Halifax`, `Inverness`  