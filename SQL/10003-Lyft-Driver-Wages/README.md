# 🚗 Lyft Driver Wages – SQL Challenge

**Last Updated:** May 2025  
**Company:** Lyft  
**Difficulty:** Easy  
**Problem ID:** 10003  

---

## 🧠 Problem Description

Find all **Lyft drivers** whose **yearly salary** falls into one of the following two categories:

- Less than or equal to **30,000 USD**
- Greater than or equal to **70,000 USD**

Return **all columns** for the matching records.

---

## 📊 Table: `lyft_drivers`

| Column Name     | Data Type |
|-----------------|-----------|
| index           | bigint    |
| start_date      | date      |
| end_date        | date      |
| yearly_salary   | bigint    |

---

## ✅ Expected Output

A subset of the `lyft_drivers` table including **only the rows** where:

- `yearly_salary <= 30000` **OR**
- `yearly_salary >= 70000`

All columns should be returned in the output.


## 🧪 Sample Output (Mocked Preview)

| index | start_date | end_date   | yearly_salary |
|-------|------------|------------|----------------|
| 1     | 2022-01-01 | 2023-01-01 | 25000          |
| 7     | 2020-06-15 | 2023-06-15 | 72000          |

---

## 🔍 Tags

`Data Engineer` · `Data Scientist` · `BI Analyst` · `Data Analyst` · `ML Engineer`
