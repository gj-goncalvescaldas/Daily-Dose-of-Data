# hackerrank_Type_of_Triangle

**HackerRank — Type of Triangle**

**Problem Statement:**  
Write a query identifying the type of each record in the `TRIANGLES` table using its three side lengths. For each record, output one of the following statements:

- **Equilateral**: All three sides are equal.  
- **Isosceles**: Exactly two sides are equal.  
- **Scalene**: All sides are of different lengths.  
- **Not A Triangle**: The sides do not form a valid triangle.

---

## Input Format

The `TRIANGLES` table has the following structure:

| Column Name | Type |
|-------------|------|
| A           | int  |
| B           | int  |
| C           | int  |

- Each row represents the lengths of the three sides of a triangle.

---

## Sample Input

| A | B | C |
|---|---|---|
| 5 | 5 | 8 |
| 4 | 4 | 4 |
| 3 | 4 | 5 |
| 1 | 2 | 10 |

---

## Sample Output

| Type           |
|----------------|
| Isosceles      |
| Equilateral    |
| Scalene        |
| Not A Triangle |

---

## Explanation

1. The tuple `(5, 5, 8)` forms an **Isosceles** triangle because two sides are equal.  
2. The tuple `(4, 4, 4)` forms an **Equilateral** triangle because all sides are equal.  
3. The tuple `(3, 4, 5)` forms a **Scalene** triangle because all sides are different.  
4. The tuple `(1, 2, 10)` cannot form a triangle because the sum of any two sides is not greater than the third side.

---

## Notes / Constraints

- Side lengths are positive integers.  
- Use the **triangle inequality** to determine if the sides form a valid triangle: the sum of any two sides must be greater than the third side.  
- Output exactly one string per row, corresponding to the type of triangle.
