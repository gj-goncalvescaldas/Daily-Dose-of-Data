# hackerrank_Pivot_Occupations_By_Name

**HackerRank — Pivot Occupations by Name**

You are given a table **OCCUPATIONS** with two columns: `Name` and `Occupation`. Your task is to pivot the data so that each `Occupation` becomes a column and the corresponding `Name`s appear under each column sorted alphabetically.  

The output should have **four columns** in this specific order: **Doctor, Professor, Singer, Actor**. If an occupation has fewer names than others, fill the missing cells with `NULL`.

---

## Input Format

The table `OCCUPATIONS` has the following structure:

| Column Name | Type   |
|-------------|--------|
| Name        | String |
| Occupation  | String |

- `Occupation` will only contain one of the following values: **Doctor, Professor, Singer, Actor**.

---

## Sample Input

| Name      | Occupation |
|-----------|------------|
| Samantha  | Doctor     |
| Jenny     | Doctor     |
| Julia     | Actor      |
| Ketty     | Professor  |
| Christeen | Professor  |
| Jane      | Actor      |
| Priya     | Singer     |
| Meera     | Singer     |
| Ashley    | Professor  |
| Maria     | Actor      |

---

## Sample Output

| Doctor   | Professor | Singer | Actor |
|----------|-----------|--------|-------|
| Jenny    | Ashley    | Meera  | Jane  |
| Samantha | Christeen | Priya  | Julia |
| NULL     | Ketty     | NULL   | Maria |

---

## Explanation

- Each column lists names corresponding to the occupation in **alphabetical order**.  
- Columns with fewer names than the maximum are padded with `NULL` values.

---

## Notes / Constraints

- There are only four possible occupation values: **Doctor, Professor, Singer, Actor**.  
- Sort each list of names **alphabetically** before pivoting.  
- Output exactly four columns in the order: **Doctor, Professor, Singer, Actor**.
