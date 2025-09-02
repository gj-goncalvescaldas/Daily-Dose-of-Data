# sqlguroo_17_Second_To_Last_Order_July2020

# SQL Guroo Exercise

**Question:**  
Find the `customer_id` of the second-to-last order placed in July 2020.

---

### 1. Schema
Schema for `orders` :  

| Column_Name   | Column_Type |
|---------------|-------------|
| order_id      | integer     |
| total_price   | numeric     |
| order_date    | datetime    |
| payment_method| text        |
| status        | text        |
| customer_id   | integer     |

---

### 2. Data Table
Table name — `orders` :  

| order_id | total_price | order_date                | payment_method | status    | customer_id |
|----------|-------------|---------------------------|----------------|-----------|-------------|
| 50956810 | 6.27        | 2020-06-18T00:00:00.000Z  | Credit Card    | processed | 706740      |
| 7433772  | 3.98        | 2020-08-23T00:00:00.000Z  | Credit Card    | processed | 239532      |
| 75700616 | 2.97        | 2021-03-02T00:00:00.000Z  | Credit Card    | processed | 573977      |

---

### 3. Example Output
**Expected Result**  

| customer_id |
|-------------|
| 458940      |
