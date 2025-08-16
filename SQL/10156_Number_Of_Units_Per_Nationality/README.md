# 10156_Number_Of_Units_Per_Nationality

**StrataScratch — Number Of Units Per Nationality**

Property ownership patterns can provide insights into demographics and investment behaviour. Understanding how many apartments are owned by younger hosts helps highlight which nationalities are most active in the housing market.

**Task:**  
Find how many different apartments (`unit_id`) are owned by hosts under 30 years old, grouped by nationality. Sort the results in descending order of the number of apartments owned.

**Assumptions:**  
- Only consider hosts **under 30 years old**.  
- Apartments are uniquely identified by `unit_id`.  
- Results should be grouped by nationality and sorted in descending order by apartment count.  
- Each apartment is counted once per host.  

**Tables:**  
`airbnb_hosts`  
- `age` (bigint) — host’s age.  
- `gender` (text) — host’s gender.  
- `host_id` (bigint) — unique identifier of the host.  
- `nationality` (text) — nationality of the host.  

`airbnb_units`  
- `city` (text) — city of the unit.  
- `country` (text) — country of the unit.  
- `host_id` (bigint) — unique identifier of the host.  
- `n_bedrooms` (bigint) — number of bedrooms.  
- `n_beds` (bigint) — number of beds.  
- `unit_id` (text) — unique identifier of the unit.  
- `unit_type` (text) — type of the unit (e.g., apartment, house).  

**Output:**  
- `nationality` (text) — nationality of the host.  
- `n_units` (int) — number of apartments owned by hosts under 30.
