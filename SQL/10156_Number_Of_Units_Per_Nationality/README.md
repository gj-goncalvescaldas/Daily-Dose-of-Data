# 10156_Number_Of_Units_Per_Nationality

We have data on rental properties and their owners. The goal is to determine how many different apartments (identified by `unit_id`) are owned by individuals under the age of 30, grouped by their nationality.

The results should be sorted to highlight which nationality owns the most apartments.

## Tables

### airbnb_hosts
- **host_id**: bigint
- **age**: bigint
- **gender**: text
- **nationality**: text

### airbnb_units
- **unit_id**: text
- **host_id**: bigint
- **city**: text
- **country**: text
- **n_bedrooms**: bigint
- **n_beds**: bigint
- **unit_type**: text

## Expected Output

| nationality | apartment_count |
|-------------|------------------|
| USA         | 2                |
