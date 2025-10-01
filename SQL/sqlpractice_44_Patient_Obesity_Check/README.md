# sqlpractice_44_Patient_Obesity_Check

**sql-practice — Patient Obesity Check**  

Hospitals often need to flag patients as obese based on BMI (Body Mass Index) for clinical and research purposes. BMI is calculated as:  

\[
\text{BMI} = \frac{\text{weight (kg)}}{\left(\text{height (m)}\right)^2}
\]

A patient is considered **obese** if BMI ≥ 30.  

**Task:**  
Show `patient_id`, `weight`, `height`, and `isObese` from the patients table.  
- `isObese` should be displayed as a boolean `0` or `1`.  
- `weight` is stored in kilograms.  
- `height` is stored in centimeters (convert to meters before calculation).  

**Assumptions:**  
- Boolean `1` = obese, `0` = not obese.  
- Conversion: height in meters = `height / 100`.  

**Hints:**  
- Use the formula `weight / POWER(height / 100.0, 2) >= 30`.  
- Apply a `CASE WHEN` to output `1` or `0`.  

**Sample Output:**  

patient_id | weight | height | isObese

1 | 65 | 156 | 0
2 | 76 | 185 | 0
3 | 106 | 194 | 0
4 | 104 | 191 | 0
5 | 10 | 47 | 1
6 | 5 | 43 | 0