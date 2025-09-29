# sqlpractice_40_Display_Patient_Height_Weight_Birthdate_Gender

**sql-practice — Display Patient Height, Weight, Birthdate, and Gender in Converted Units**  

Healthcare systems often need to display patient data in standardized units and readable formats for reports or dashboards. This query converts height from centimeters to feet, weight from kilograms to pounds, and shows full gender names.  

**Task:**  
Display each patient’s full name, height in feet (rounded to 1 decimal), weight in pounds (rounded to 0 decimals), birth date, and gender in full (MALE/FEMALE).  

**Assumptions:**  
- Height is stored in centimeters and must be converted to feet by dividing by 30.48.  
- Weight is stored in kilograms and must be converted to pounds by multiplying by 2.205.  
- Gender column contains 'M' or 'F' and should be displayed as 'MALE' or 'FEMALE'.  

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
- `patient_name` (concatenate first_name and last_name)  
- `height_feet` (height in feet, rounded to 1 decimal)  
- `weight_pounds` (weight in pounds, rounded to 0 decimals)  
- `birth_date`  
- `gender` (display as MALE or FEMALE)  
- Results should be sorted by `patient_name` ascending.  

**Sample Output:**  
| patient_name       | height_feet | weight_pounds | birth_date  | gender |  
|------------------|-------------|---------------|------------|--------|  
| Donald Waterfield | 5.1         | 143           | 1963-02-12 | MALE   |  
| Mickey Baasha     | 6.1         | 168           | 1981-05-28 | MALE   |  
| Jiji Sharma       | 6.4         | 234           | 1957-09-05 | MALE   |  
| Blair Diaz        | 6.3         | 229           | 1967-01-07 | MALE   |  
| Charles Wolfe     | 1.5         | 22            | 2017-11-19 | MALE   |  
| Sue Falcon        | 1.4         | 11            | 2017-09-30 | FEMALE |