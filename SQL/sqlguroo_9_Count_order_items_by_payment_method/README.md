# sqlguroo_9_Count_order_items_by_payment_method

# SQL Guroo Exercise

**Question:**  
Count the number of order items for each payment method.

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

Schema for `order_details` :  

| Column_Name | Column_Type |
|-------------|-------------|
| id          | integer     |
| order_id    | integer     |
| product_id  | integer     |
| price       | numeric     |

---

### 2. Data Table
Table name — `orders` :  

| order_id | total_price | order_date               | payment_method | status    | customer_id |
|----------|-------------|--------------------------|----------------|-----------|-------------|
| 50956810 | 6.27        | 2020-06-18T00:00:00.000Z | Credit Card    | processed | 706740      |
| 7433772  | 3.98        | 2020-08-23T00:00:00.000Z | Credit Card    | processed | 239532      |
| 75700616 | 2.97        | 2021-03-02T00:00:00.000Z | Credit Card    | processed | 573977      |

Table name — `order_details` :  

| id | order_id | product_id | price |
|----|----------|------------|-------|
| 1  | 50956810 | 7          | 6.27  |
| 2  | 7433772  | 15         | 3.98  |
| 3  | 75700616 | 18         | 2.97  |

---

### 3. Example Output
**Expected Result**  

| payment_method | count |
|----------------|-------|
| PayMe          | 15    |
| cash           | 59    |