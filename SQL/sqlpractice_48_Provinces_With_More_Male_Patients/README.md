# sqlpractice_48_Provinces_With_More_Male_Patients

**sql-practice — Provinces With More Male Patients**  

Healthcare analysts often need to understand demographic distributions across regions. This query identifies provinces where the **number of male patients (`gender = 'M'`) exceeds the number of female patients (`gender = 'F'`)**.

**Task:**  
Show the `province_name` of each province that has **more patients identified as 'M' than 'F'**.

**Assumptions:**  
- `patients` table stores gender using `'M'` and `'F'` only.  
- Each patient is linked to a province via `province_id`.  

**Tables:**  
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

`province_names`  
- province_id (CHAR(2), PK)  
- province_name (TEXT)  

**Output:**  
- province_name (TEXT)

**Sample Output:**  

Alberta
British Columbia
Manitoba
Newfoundland and Labrador
Nova Scotia
Ontario
Saskatchewan*  



Alberta

British Columbia

Manitoba

Newfoundland and Labrador

Nova Scotia

Ontario

Saskatchewan

