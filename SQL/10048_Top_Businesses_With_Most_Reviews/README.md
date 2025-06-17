# 10048_Top_Businesses_With_Most_Reviews

Given a dataset containing information about Yelp businesses, identify the top 5 businesses that have received the most reviews. Each row in the dataset represents a unique business, and the total number of reviews for that business is provided in the `review_count` column.

You are required to output the business `name` along with its corresponding `review_count`. The final result should be ordered in descending order based on the number of reviews.

**Table: yelp_business**

| Column        | Type    | Description                      |
|---------------|---------|----------------------------------|
| address       | text    | Business address                 |
| business_id   | text    | Unique identifier for business   |
| categories    | text    | Categories assigned to business  |
| city          | text    | City where business is located   |
| is_open       | bigint  | Business open status             |
| latitude      | double  | Latitude coordinate              |
| longitude     | double  | Longitude coordinate             |
| name          | text    | Business name                    |
| neighborhood  | text    | Neighborhood                     |
| postal_code   | text    | Postal code                      |
| review_count  | bigint  | Total number of reviews          |
| stars         | double  | Star rating                      |
| state         | text    | State                            |
