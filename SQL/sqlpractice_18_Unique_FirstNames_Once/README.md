# sqlpractice_18_Unique_FirstNames_Once

**sql-practice — Find First Names Occurring Only Once**  

Sometimes, it is necessary to identify patients with unique first names for personalized communications or analysis. This query filters out any names that appear more than once.  

**Task:**  
Show unique `first_name` values from the `patients` table that occur only once.  

**Assumptions:**  
- Count the occurrences of each first name and include only those appearing once.  
- Case sensitivity depends on the database collation; `'John'` and `'john'` may be considered distinct.  

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
- Example rows: `Abby`, `Adelaide`, `Adelia`, `Akira`, `Albert`, `Aldo`, `Alec`, `Alicia`, `Allan`, `Alpa`, `Amane`, `Amitabh`  
