# sqlpractice_9_Tallest_Patient

**sql-practice — Find the Tallest Patient**  

Medical records often need to identify patients with extreme measurements for specialized care or studies. This query finds the patient with the maximum height.  

**Task:**  
Show the `first_name`, `last_name`, and `height` of the patient who has the greatest height.  

**Assumptions:**  
- If multiple patients share the same maximum height, all should be returned.  
- The `height` column is an integer representing height in consistent units.  

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
- `height` (INT)  
- Example: `Sam Haruko 226`  