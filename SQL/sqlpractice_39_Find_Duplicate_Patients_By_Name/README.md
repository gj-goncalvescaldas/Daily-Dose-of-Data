# sqlpractice_39_Find_Duplicate_Patients_By_Name

**sql-practice — Find Duplicate Patients By Name**  

Hospitals often need to identify patients with the same name to avoid duplicate records in the system. This query helps in detecting patients who share identical first and last names, which could indicate duplicate or erroneous entries in the database.  

**Task:**  
Display the `first_name`, `last_name`, and the number of duplicate patients (`duplicate_count`) for each name that appears more than once in the patients table.  

**Assumptions:**  
- Patients are considered duplicates if both their `first_name` and `last_name` are identical.  
- Middle names or other identifiers are not considered in this check.  
- Only show patients where the count is greater than 1.  

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

**Output:**  
- `first_name`  
- `last_name`  
- `duplicate_count` (number of patients with the same first and last name)  
- Results should be sorted by `last_name` ascending, then `first_name` ascending.  

**Sample Output:**  
| first_name | last_name  | duplicate_count |  
|------------|------------|-----------------|  
| Alexandra  | Holroyd    | 2               |  
| Avon       | Travis     | 2               |  
| Belladonna | Thomas     | 2               |  
| Chris      | Johnson    | 2               |  
| Dol        | Forelli    | 2               |  
| Emil       | Owens      | 2               |  
| Jack       | Bennett    | 2               |  
| Jack       | McArthur   | 2               |  