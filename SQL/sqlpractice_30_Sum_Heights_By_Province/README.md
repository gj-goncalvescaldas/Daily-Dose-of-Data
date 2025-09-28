# sqlpractice_30_Sum_Heights_By_Province

**sql-practice — Sum Heights By Province**  

Hospitals sometimes need to aggregate patient data by region to analyze trends. This query calculates the total height of patients per province and identifies provinces with a combined height above a certain threshold.  

**Task:**  
Show each `province_id` and the total `height` of its patients where the total sum is greater than or equal to **7,000**.  

**Assumptions:**  
- Each patient has a valid `province_id`.  
- Heights are stored in centimeters and as integers.  

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
- `province_id`  
- `total_height` (sum of all patients’ heights in that province)  
- Only rows with `total_height >= 7000`.  

**Example Output:**  
| province_id | total_height |  
|-------------|--------------|  
| BC          | 7720         |  
| NS          | 9765         |  