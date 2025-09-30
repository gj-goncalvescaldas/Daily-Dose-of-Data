# sqlpractice_43_Patient_Weight_Groups

**sql-practice — Patient Weight Groups**  

Hospitals often need to categorize patients into weight brackets for reporting and research purposes. For example, someone weighing 115 would be placed into the **110 group**, since they fall within 110–119.  

**Task:**  
Show all patients grouped into weight groups. Display the total number of patients in each weight group.  
Order the results by the weight group in descending order.  

**Assumptions:**  
- A weight group is defined by the floor to the nearest 10 below the actual weight.  
  - Example:  
    - 100–109 → group `100`  
    - 110–119 → group `110`  
    - 120–129 → group `120`  

**Hints:**  
- Use `FLOOR(weight / 10) * 10` to create the grouping.  
- Count patients per group.  
- Order by group descending.  

**Sample Output:**  

weight_group | total_patients
140 | 6
130 | 59
120 | 191
110 | 426
100 | 507
90 | 403
80 | 478