**sql-practice — Sort Provinces with Ontario First**

You are preparing a list of provinces for display in a national database application.  
The list should be sorted alphabetically, **except** that `'Ontario'` must always appear at the top.

**Task:**  
Write a query to display all province names in ascending order,  
but ensure that `'Ontario'` appears first regardless of alphabetical order.

**Assumptions:**  
- Every row in the table `provinces` contains a unique province name.  
- `'Ontario'` exists in the dataset.

**Table:**  
`provinces`  
- `province_id` (CHAR(2))  
- `province_name` (TEXT)  

**Output:**  
- `province_name` — list of province names with `'Ontario'` first, then the rest in ascending order.

**Expected Output Example:**  
| province_name              |
|-----------------------------|
| Ontario                     |
| Alberta                     |
| British Columbia             |
| Manitoba                    |
| New Brunswick                |
| Newfoundland and Labrador    |
| Northwest Territories        |
| Nova Scotia                  |
| Nunavut                      |
| Prince Edward Island         |
| Quebec                       |
| Saskatchewan                 |
| Yukon                        |
