# sqlpractice_49_Find_Specific_Patient_By_Complex_Criteria

**sql-practice — Find Specific Patient by Complex Criteria**  

Medical systems sometimes require retrieving detailed records based on several combined conditions. This exercise filters patients using multiple demographic and physical attributes.

**Task:**  
Pull **all columns** from the `patients` table for the patient who matches the following criteria:
- `first_name` contains an `'r'` **after** the first two letters  
- `gender` is `'F'`  
- `birth_date` is in **February**, **May**, or **December**  
- `weight` is **between 60 and 80 kg**  
- `patient_id` is **odd**  
- `city` is `'Kingston'`

**Assumptions:**  
- The `birth_date` column is of type `DATE`.  
- City names are case-sensitive as stored in the database.  

**Table Info:**  
`patients`  
- patient_id (INT, PK)  
- first_name (TEXT)  
- last_name (TEXT)  
- gender (CHAR(1))  
- birth_date (DATE)  
- city (TEXT)  
- province_id (CHAR(2))  
- allergies (TEXT)  
- height (INT)  
- weight (INT)

**Sample Output:**  
1839 | Chris | Cardenas | F | 1969-12-02 | Kingston | ON | NULL | 141 | 71