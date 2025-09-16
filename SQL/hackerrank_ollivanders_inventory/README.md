# hackerrank_ollivanders-inventory

**HackerRank — Ollivander’s Inventory**

Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.  

Hermione decides the best way to choose is by determining the **minimum number of gold galleons** needed to buy each **non-evil wand** of high power and age.  

**Task:**  
Write a query to print the following columns for the wands that Ron is interested in:  
- `id`  
- `age`  
- `coins_needed`  
- `power`  

Sort the result:  
1. By **descending power**  
2. If more than one wand has the same power, by **descending age**  

---

**Tables:**

- `Wands`  
  - `id` (int): ID of the wand  
  - `code` (int): Code of the wand  
  - `coins_needed` (int): Number of gold galleons required  
  - `power` (int): Power/quality of the wand  

- `Wands_Property`  
  - `code` (int): Code of the wand  
  - `age` (int): Age of the wand  
  - `is_evil` (int): Indicates if the wand is evil (0 = not evil, 1 = evil)  

*Note:*  
- The mapping between `code` and `age` is one-to-one.  
- Only consider **non-evil** wands (`is_evil = 0`).  
- For each pair `(power, age)`, you must select the wand with the **minimum `coins_needed`**.  

---

**Output Format:**  
Print `id`, `age`, `coins_needed`, and `power` in the required order.  

---

**Sample Output:**  
9 45 1647 10
12 17 9897 10
1 20 3688 8
15 40 6018 7
19 20 7651 6
11 40 7587 5
10 20 504 5
18 40 3312 3
20 17 5689 3
5 45 6020 2
14 40 5408 1


---

**Explanation:**  
- For each `(power, age)` group, we only keep the wand with the **minimum `coins_needed`**.  
- Then we exclude all **evil** wands (`is_evil = 1`).  
- Finally, sort by `power DESC, age DESC`.  
