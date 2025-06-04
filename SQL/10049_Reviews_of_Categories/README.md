# 10049_Reviews_of_Categories

## Problem Description

You are provided with a table `yelp_business` containing information about various businesses listed on Yelp, including their categories and review counts.

Your task is to compute the total number of reviews for each business category. Each business may belong to multiple categories listed in a single string. You need to parse these categories and aggregate the total number of reviews across all businesses for each distinct category.

The final output should display:
- `category`: the name of the business category.
- `review_cnt`: the total number of reviews for that category.

The result should be ordered by `review_cnt` in descending order.

## Table: yelp_business

### Columns:
- `address`: text
- `business_id`: text
- `categories`: text (may contain multiple categories separated by delimiters)
- `city`: text
- `is_open`: bigint
- `latitude`: double
- `longitude`: double
- `name`: text
- `neighborhood`: text
- `postal_code`: text
- `review_count`: bigint
- `stars`: double
- `state`: text
