# sqlguroo_7_Count_orders

# SQL Guroo Exercise

**Question:**  
How many orders contain more than two order items?

---

### 1. Schema
Schema for `order_details` :  

| Column_Name | Column_Type |
|-------------|-------------|
| id          | integer     |
| order_id    | integer     |
| product_id  | integer     |
| price       | numeric     |

---

### 2. Data Table
Table name — `order_details` :  

| id | order_id | product_id | price |
|----|----------|------------|-------|
| 1  | 50956810 | 7          | 6.27  |
| 2  | 7433772  | 15         | 3.98  |
| 3  | 75700616 | 18         | 2.97  |

---

### 3. Example Output
**Expected Result**  

| count |
|-------|
| 54    |