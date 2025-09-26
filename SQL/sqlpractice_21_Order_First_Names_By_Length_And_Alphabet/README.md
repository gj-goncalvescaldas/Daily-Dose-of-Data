# sqlpractice_21_Order_First_Names_By_Length_And_Alphabet

**sql-practice — Order First Names by Length and Alphabetically**  

Patient reporting sometimes requires organizing lists for readability. This query outputs all patient first names ordered first by the number of characters in the name, and then alphabetically within names of equal length.  

**Task:**  
Display every patient's `first_name`, ordered by:  
1. Length of the name (shortest first).  
2. Alphabetical order when lengths are equal.  

**Assumptions:**  
- Names are case-insensitive for alphabetical sorting.  
- If multiple patients share the same name, duplicates should appear in the output.  

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
- Ordered by `LENGTH(first_name)` ascending, then alphabetically.  

**Example Hints:**  
- `Al`  
- `Bo`  
- `Cal`  
- `Dina`  