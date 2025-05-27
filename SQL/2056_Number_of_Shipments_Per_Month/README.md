# 2056_Number_of_Shipments_Per_Month

## Problem Description

You are given a table named `amazon_shipment` that contains details about individual shipment records. Each shipment is uniquely identified by the combination of `shipment_id` and `sub_id`.

Your task is to write a query that calculates the number of shipments made per month. The output should include two columns:
- `date_ym`: the year and month in the format `YYYY-MM`
- `count(shipment_id)`: the number of unique shipments for that month

## Table: amazon_shipment

| Column         | Type   | Description                            |
|----------------|--------|----------------------------------------|
| shipment_id    | bigint | Identifier for the shipment            |
| sub_id         | bigint | Sub-identifier for each shipment       |
| weight         | bigint | Weight of the shipment                 |
| shipment_date  | date   | Date when the shipment was made        |

The output should group the records by month and count each unique combination of `shipment_id` and `sub_id` as one shipment.
