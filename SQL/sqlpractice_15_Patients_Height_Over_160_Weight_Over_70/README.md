
# sqlpractice_15_Patients_Height_Over_160_Weight_Over_70

**sql-practice — Find Patients With Height > 160 and Weight > 70**  

Medical staff may need to identify patients with certain body measurements for treatment planning or study cohorts. This query filters patients by both height and weight.  

**Task:**  
Show `first_name`, `last_name`, and `birth_date` of patients whose `height` is greater than 160 and `weight` is greater than 70.  

**Assumptions:**  
- Heights and weights are stored as integers.  
- Both conditions must be met simultaneously.  

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
- `first_name` (TEXT)  
- `last_name` (TEXT)  
- `birth_date` (DATE)  
- Example: `Mickey Baasha 1981-05-28` 