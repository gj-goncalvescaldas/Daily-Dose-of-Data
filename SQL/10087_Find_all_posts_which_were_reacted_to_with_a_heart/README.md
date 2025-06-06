# 10087_Find_all_posts_which_were_reacted_to_with_a_heart

## Problem Description

You are given two tables: `facebook_reactions` and `facebook_posts`. The goal is to identify all posts that received at least one "heart" reaction. For every post that was reacted to with a heart, return **all columns** from the `facebook_posts` table.

## Tables

### facebook_reactions

- `date_day`: int
- `friend`: bigint
- `post_id`: bigint
- `poster`: bigint
- `reaction`: text

### facebook_posts

- `post_date`: date
- `post_id`: bigint
- `post_keywords`: text
- `post_text`: text
- `poster`: bigint

## Output

Return all columns from the `facebook_posts` table for the posts that have received a "heart" reaction.
