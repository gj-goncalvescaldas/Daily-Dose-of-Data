# sqlguroo_1_Highest_price_from_all_the_orders

# SQL Guroo Exercise

**Question:**  
Identify the `order_id` associated with the highest total price among all orders.

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

| order_id | total_price | order_date               | payment_method | status     | customer_id |
|----------|-------------|--------------------------|----------------|------------|-------------|
| 50956810 | 6.27        | 2020-06-18T00:00:00.000Z | Credit Card    | processed  | 706740      |
| 7433772  | 3.98        | 2020-08-23T00:00:00.000Z | Credit Card    | processed  | 239532      |
| 75700616 | 2.97        | 2021-03-02T00:00:00.000Z | Credit Card    | processed  | 573977      |

---

### 3. Example Output
**Expected Result**  

| order_id |
|----------|
| 5648951  |
