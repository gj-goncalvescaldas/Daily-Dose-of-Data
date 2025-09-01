# SQL Guroo Exercise

**Question:**  
List the three order IDs with the highest total aggregated product weights.

---

### 1. Schema
Schema for `orders` :  

| Column_Name    | Column_Type |
|----------------|-------------|
| order_id       | integer     |
| total_price    | numeric     |
| order_date     | datetime    |
| payment_method | text        |
| status         | text        |
| customer_id    | integer     |

Schema for `order_detail` :  

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
Table name — `orders` :  

| order_id | total_price | order_date               | payment_method | status    | customer_id |
|----------|-------------|--------------------------|----------------|-----------|-------------|
| 50956810 | 6.27        | 2020-06-18T00:00:00.000Z | Credit Card    | processed | 706740      |
| 7433772  | 3.98        | 2020-08-23T00:00:00.000Z | Credit Card    | processed | 239532      |
| 75700616 | 2.97        | 2021-03-02T00:00:00.000Z | Credit Card    | processed | 573977      |

Table name — `order_detail` :  

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

| order_id |
|----------|
| 7433772  |
| 75700616 |
| 50956810 |