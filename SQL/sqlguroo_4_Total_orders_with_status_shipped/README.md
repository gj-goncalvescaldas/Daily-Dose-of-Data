# sqlguroo_4_Total_orders_with_status_shipped

# SQL Guroo Exercise

**Question:**  
Determine the total number of orders with a status of `shipped`.

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

| count |
|-------|
| 67    |
