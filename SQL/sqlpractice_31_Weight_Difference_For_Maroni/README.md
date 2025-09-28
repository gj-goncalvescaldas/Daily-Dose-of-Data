
# sqlpractice_31_Weight_Difference_For_Maroni

**sql-practice — Weight Difference for Patients Named Maroni**  

When analyzing patient records, it can be useful to see the spread of measurements like weight within a family name group. This query calculates the difference between the heaviest and lightest patients with the last name **'Maroni'**.  

**Task:**  
Find the difference between the maximum `weight` and minimum `weight` among patients whose `last_name` is `'Maroni'`.  

**Assumptions:**  
- All patients with last name `'Maroni'` have non-null weight values.  
- If there is only one patient named `'Maroni'`, the difference will be `0`.  

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
- `weight_difference` (the result of `MAX(weight) - MIN(weight)`).  

**Example Output:**  
| weight_difference |  
|-------------------|  
| 71                |  