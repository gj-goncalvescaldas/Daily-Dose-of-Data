# sqlpractice_17_Unique_Birth_Years_Ascending

**sql-practice — List Unique Birth Years in Ascending Order**  

For demographic analysis or reporting, it is often useful to extract all distinct birth years of patients and sort them chronologically.  

**Task:**  
Show unique birth years from the `patients` table and order them in ascending order.  

**Assumptions:**  
- Extract the year part from the `birth_date` column.  
- Only distinct years should be included.  

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
- `birth_year` (INT)  
- Ordered ascending.  
- Example rows: `1918`, `1923`, `1925`, `1926`, `1927`, `1928`, `1929`, `1931` 