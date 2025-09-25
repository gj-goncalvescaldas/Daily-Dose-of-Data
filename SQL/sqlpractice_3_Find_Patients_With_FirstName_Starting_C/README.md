# sqlpractice_3_Find_Patients_With_FirstName_Starting_C

**sql-practice — Find Patients With First Name Starting With 'C'**  

Medical staff may need to quickly search patients by the first letter of their name (e.g., when looking up charts alphabetically). This query filters all patients whose first name begins with the letter `'C'`.  

**Task:**  
Show the `first_name` of patients where the name starts with `'C'`.  

**Assumptions:**  
- Matching is case-sensitive depending on the database collation, but typically `'C%'` will match all names beginning with uppercase `C`.  
- Names starting with lowercase `c` are not included unless explicitly allowed by collation.  

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
- Results should only include names starting with `'C'`.  
- Sorting is not required but can be ordered alphabetically if needed.  