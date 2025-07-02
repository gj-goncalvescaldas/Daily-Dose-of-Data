# facebook-page-with-no-likes

**DataLemur: Facebook — Page With No Likes**

You are given two tables: `pages` and `page_likes`, both containing data related to Facebook Pages and their user interactions.

The `pages` table includes information about each Facebook Page:
- `page_id` (integer): Unique identifier for each page
- `page_name` (varchar): Name of the Facebook page

The `page_likes` table records which users liked which pages and when:
- `user_id` (integer): Unique identifier for each user
- `page_id` (integer): Identifier for the liked page
- `liked_date` (datetime): Timestamp of when the page was liked

Your task is to write a query to find the IDs of Facebook pages that have **zero likes**. The result should only include the `page_id` values of such pages and must be sorted in ascending order.

This query should work regardless of the specific data in the tables. The provided inputs and outputs are just examples to guide your understanding of the structure.
