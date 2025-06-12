# 10134_Spam_Posts

Given two tables, `facebook_posts` and `facebook_post_views`, this problem asks you to calculate the **daily percentage of spam posts among all viewed posts**. 

A post is considered **spam** if the word `"spam"` appears within the `post_keywords` field of the `facebook_posts` table. The `facebook_post_views` table tracks which posts were viewed by users.

### Tables:

#### facebook_posts
- `post_date` (date): Date the post was created.
- `post_id` (bigint): Unique identifier for each post.
- `post_keywords` (text): Keywords associated with the post.
- `post_text` (text): Content of the post.
- `poster` (bigint): User who created the post.

#### facebook_post_views
- `post_id` (bigint): ID of the post that was viewed.
- `viewer_id` (bigint): ID of the user who viewed the post.

### Expected Output:
- `post_date` (date): The date on which posts were viewed.
- `spam_share` (integer): Percentage of viewed posts on that date that were spam (rounded to nearest integer).
