# sqlguroo_15_YoY_GDP_Growth_1970_1980

# SQL Guroo Exercise

**Question:**  
Calculate the year-over-year GDP growth percentage for each year from 1970 to 1980.

---

### 1. Schema
Schema for `usa_gdp` :  

| Column_Name | Column_Type |
|-------------|-------------|
| year        | integer     |
| gdp         | numeric     |
| per_capita  | numeric     |

---

### 2. Data Table
Table name — `usa_gdp` :  

| year | gdp       | per_capita |
|------|-----------|------------|
| 1960 | 543.300000 | 3007.123400 |
| 1961 | 563.300000 | 3066.562900 |
| 1962 | 605.100000 | 3243.843100 |

---

### 3. Example Output
**Expected Result**  

| year | yoy   |
|------|-------|
| 1970 | 2.12% |
| 1971 | 3.54% |
| 1972 | 8.77% |
| 1973 | 5.76% |
| 1974 | 9.80% |
| 1975 | 3.11% |
| 1976 | 7.66% |
| 1977 | 4.72% |
| 1978 | 8.50% |
| 1979 | 1.61% |