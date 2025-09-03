# sqlguroo_19_Third_President_With_Second_Most_Common_Occupation

# SQL Guroo Exercise

**Question:**  
What is the name of the third president (chronologically) to assume office whose occupation was the second most common among all presidents? In case of a tie, prefer the occupation with the highest total years in office.

---

### 1. Schema
Schema for `usa_presidents` :  

| Column_Name     | Column_Type |
|-----------------|-------------|
| position        | integer     |
| name            | text        |
| party           | text        |
| term_start      | date        |
| state_of_birth  | text        |
| born            | date        |
| died            | date        |
| religion        | text        |
| occupation      | text        |
| college         | text        |
| years_in_office | numeric     |

---

### 2. Data Table
Table name — `usa_presidents` :  

| position | name       | party                  | term_start                 | state_of_birth | born                   | died                   | religion      | occupation       | college           | years_in_office |
|----------|------------|-----------------------|----------------------------|----------------|-----------------------|-----------------------|---------------|-----------------|------------------|----------------|
| 1        | Washington | Federalist            | 1789-01-20T00:00:00.000Z | Virginia       | 1732-02-22T00:00:00.000Z | 1799-12-14T00:00:00.000Z | Episcopalian  | Planter          | None             | 8.00           |
| 2        | J. Adams   | Federalist            | 1797-01-20T00:00:00.000Z | Massachusetts  | 1735-10-30T00:00:00.000Z | 1826-07-04T00:00:00.000Z | Unitarian     | Lawyer           | Harvard          | 4.00           |
| 3        | Jefferson  | Democratic-Republican | 1801-01-20T00:00:00.000Z | Virginia       | 1743-04-13T00:00:00.000Z | 1826-07-04T00:00:00.000Z | Deist         | Planter, Lawyer  | William and Mary | 8.00           |

---

### 3. Example Output
**Expected Result**  

| name      |
|-----------|
| Jefferson |
