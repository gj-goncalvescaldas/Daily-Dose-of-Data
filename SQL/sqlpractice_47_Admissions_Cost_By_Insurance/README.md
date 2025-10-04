# sqlpractice_47_Admissions_Cost_By_Insurance

**sql-practice — Admissions Cost By Insurance**  

Hospitals often need to analyze total patient billing based on whether patients have insurance coverage. In this scenario, patients with **even `patient_id` values have insurance** and pay a reduced admission fee, while others pay full price.  

**Task:**  
For each admission, calculate the cost:  
- $10 if the patient has insurance (`patient_id` is even)  
- $50 if the patient does not have insurance (`patient_id` is odd)  

Group patients into two categories:  
- `Yes` if they have insurance  
- `No` if they don’t  

Return the insurance group (`has_insurance`) and the **total admission costs** for that group.  

**Tables:**  
`admissions`  
- patient_id (INT, PK)  
- admission_date (DATE)  
- discharge_date (DATE)  
- diagnosis (TEXT)  
- attending_doctor_id (INT, PK)  

**Output:**  
- has_insurance (TEXT: `Yes` or `No`)  
- admission_total (INT: sum of all admission costs for that group)  

**Sample Output:**  

has_insurance | admission_total
--------------+----------------
No | 127800
Yes | 25110