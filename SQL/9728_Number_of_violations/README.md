### 9728_Number_of_violations

You are given a dataset named `sf_restaurant_health_violations` that contains information about health inspections in San Francisco. Each row represents a health inspection at a restaurant. If an inspection resulted in a violation, the `violation_id` column will contain a value.

Your task is to determine the total number of violations that occurred specifically at **'Roxanne Cafe'** for each year. Use the `inspection_date` column to identify the year of each inspection. The final output should list the year and the number of violations that occurred in that year, sorted in ascending order of the year.

**Table:** sf_restaurant_health_violations

**Relevant Columns:**
- `business_name` (text): Name of the business
- `inspection_date` (date): Date of the inspection
- `violation_id` (text): ID of the violation (if any)

**Output Columns:**
- `inspection_year`: Year of the inspection
- `n_violations`: Number of violations in that year
