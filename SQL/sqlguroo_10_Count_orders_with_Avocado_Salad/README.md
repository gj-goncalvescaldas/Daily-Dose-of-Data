# sqlguroo_10_Count_orders_with_Avocado_Salad

# SQL Guroo Exercise

**Question:**  
How many orders included the item 'Avocado Salad'?

---

### 1. Schema
Schema for `order_details` :  

| Column_Name | Column_Type |
|-------------|-------------|
| id          | integer     |
| order_id    | integer     |
| product_id  | integer     |
| price       | numeric     |

Schema for `product_detail` :  

| Column_Name  | Column_Type |
|--------------|-------------|
| product_id   | integer     |
| product_name | text        |
| price        | numeric     |
| weight       | numeric     |

---

### 2. Data Table
Table name — `order_details` :  

| id | order_id | product_id | price |
|----|----------|------------|-------|
| 1  | 50956810 | 7          | 6.27  |
| 2  | 7433772  | 15         | 3.98  |
| 3  | 75700616 | 18         | 2.97  |

Table name — `product_detail` :  

| product_id | product_name       | price | weight |
|------------|--------------------|-------|--------|
| 1          | Sugar Cookies      | 2.72  | 500    |
| 2          | Fudge Brownie Mix  | 5.98  | 750    |
| 3          | Frozen Snacks      | 12.12 | 1000   |

---

### 3. Example Output
**Expected Result**  

| count |
|-------|
| 7     |