# hackerrank_japanese_city_population

**HackerRank — Japanese City Population**

**Problem Statement:**  
Query the sum of the populations for all Japanese cities in the `CITY` table.  
The `COUNTRYCODE` for Japan is `'JPN'`.

---

## Input Format

The `CITY` table is described as follows:

| Column Name | Type    |
|-------------|---------|
| ID          | INT     |
| NAME        | VARCHAR |
| COUNTRYCODE | VARCHAR |
| DISTRICT    | VARCHAR |
| POPULATION  | INT     |

---

## Sample Input

| ID  | NAME       | COUNTRYCODE | DISTRICT | POPULATION |
|-----|------------|-------------|----------|------------|
| 1661| Tokyo      | JPN         | Tokyo    | 7980230    |
| 1662| Yokohama   | JPN         | Kanagawa | 3697894    |
| 1663| Osaka      | JPN         | Osaka    | 2595674    |

---

## Sample Output

14273798


---

## Explanation

The sum of the populations for Japanese cities (**COUNTRYCODE = 'JPN'**) in the sample input is:  

`7980230 + 3697894 + 2595674 = 14273798`

---

## Notes / Constraints

- Only rows where `COUNTRYCODE = 'JPN'` should be included.  
- The output must be a single integer representing the population sum.  
