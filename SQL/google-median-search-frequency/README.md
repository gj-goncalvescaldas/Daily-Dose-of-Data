# google-median-search-frequency

**Platform/Source**: Google — Median Search Frequency

Google’s marketing team needs to display the median number of searches a user made last year for a Superbowl commercial. Instead of scanning billions of records, the task uses a pre-aggregated summary of search counts.

**Task:**  
Calculate the median number of searches made by a user last year, using the aggregated frequency table, and round the result to one decimal place.

**Assumptions:**  
- The table is aggregated: each row represents how many users made a specific number of searches.
- Median should be computed from the expanded dataset implied by the frequency table.
- Round the median to one decimal place.

**Tables:**  
`search_frequency`  
- `searches` (integer)  
- `num_users` (integer)

**Output:**  
- One column: `median` (rounded float)


