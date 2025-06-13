# 10172_Best_Selling_Item

## Problem Description

You're given a table `online_retail` containing information about online sales, including details such as product description, quantity sold, unit price, and invoice date.

Your task is to determine the best-selling item for each **month** (regardless of year). The best-selling item is defined as the item with the **highest total sales amount** in that month. The total sales amount for an item is calculated using the formula:

total_paid = unitprice * quantity

You need to output the following columns:

- `month`: The numerical month (01 to 12)
- `description`: The description of the best-selling item
- `total_paid`: The total amount paid for that item in that month

## Table: `online_retail`

| Column      | Type    |
|-------------|---------|
| country     | text    |
| customerid  | double  |
| description | text    |
| invoicedate | date    |
| invoiceno   | text    |
| quantity    | bigint  |
| stockcode   | text    |
| unitprice   | double  |