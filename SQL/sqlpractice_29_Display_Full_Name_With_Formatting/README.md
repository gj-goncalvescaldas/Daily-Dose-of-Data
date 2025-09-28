# sqlpractice_29_Display_Full_Name_With_Formatting

**sql-practice — Display Full Name With Formatting**  

For patient directories or reporting, it’s sometimes necessary to display names in a consistent and formatted way. In this case, the last name should be capitalized, followed by the first name in lowercase, all shown together in a single column.  

**Task:**  
Display each patient’s full name in one column, formatted as:  
`LAST_NAME_IN_UPPERCASE,first_name_in_lowercase`  
Order the list by `first_name` in descending order.  

**Assumptions:**  
- The `first_name` and `last_name` fields always contain alphabetic text.  
- The output column can be named `full_name`.  

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
- `full_name` (concatenated and formatted string)  
- Sorted by `first_name` descending.  

**Example Output:**  
| full_name       |  
|-----------------|  
| MILLER,zoe      |  
| CORBIE,ziva     |  
| KOBAYAKAWA,zenigata |  
| OVERSTREET,zenigata |  
| BENNETT,zen     |  
| MEPHESTO,zelda  |  
| MORRIS,zelda    |  