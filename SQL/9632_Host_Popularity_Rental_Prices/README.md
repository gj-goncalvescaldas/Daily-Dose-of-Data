# 9632_Host_Popularity_Rental_Prices

You are provided with a table named `airbnb_host_searches` containing information about rental property searches made by users. Your task is to analyze rental prices based on host popularity.

Each record should be assigned a **host popularity rating** based on the number of reviews:

- 0 reviews: **"New"**
- 1 to 5 reviews: **"Rising"**
- 6 to 15 reviews: **"Trending Up"**
- 16 to 40 reviews: **"Popular"**
- More than 40 reviews: **"Hot"**

For each popularity category, calculate the following rental price statistics:

- **Minimum price**
- **Average price**
- **Maximum price**

The result should include the **host popularity** category and the corresponding **minimum, average, and maximum rental prices**, sorted by **minimum price**.

### Table: airbnb_host_searches

| Column                 | Type    |
|------------------------|---------|
| id                     | bigint  |
| price                  | double  |
| property_type          | text    |
| room_type              | text    |
| amenities              | text    |
| accommodates           | bigint  |
| bathrooms              | bigint  |
| bed_type               | text    |
| cancellation_policy    | text    |
| cleaning_fee           | tinyint |
| city                   | text    |
| host_identity_verified | text    |
| host_response_rate     | text    |
| host_since             | date    |
| neighbourhood          | text    |
| number_of_reviews      | bigint  |
| review_scores_rating   | double  |
| zipcode                | bigint  |
| bedrooms               | bigint  |
| beds                   | bigint  |
