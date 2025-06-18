# 10182_Number_of_Streets_Per_Zip_Code

## Problem Description

Count the number of **unique street names** for each **postal code** in the `sf_restaurant_health_violations` dataset.

Only consider the **first word** of the `business_address` as the street name. This should be **case insensitive**—e.g., "FOLSOM" and "Folsom" are considered the same.

Additionally, if the address structure is reversed (e.g., "Pier 39" and "39 Pier"), treat them as referring to the **same street**.

Return a result with:
- `postal_code`
- `num` (number of unique street names)

The output should be **ordered** by:
1. Number of streets (`num`) in **descending** order
2. `postal_code` in **ascending** order

## Table

**sf_restaurant_health_violations**

| Column                   | Type    |
|--------------------------|---------|
| business_address         | text    |
| business_city            | text    |
| business_id              | bigint  |
| business_latitude        | double  |
| business_location        | text    |
| business_longitude       | double  |
| business_name            | text    |
| business_phone_number    | double  |
| business_postal_code     | double  |
| business_state           | text    |
| inspection_date          | date    |
| inspection_id            | text    |
| inspection_score         | double  |
| inspection_type          | text    |
| risk_category            | text    |
| violation_description    | text    |
| violation_id             | text    |
