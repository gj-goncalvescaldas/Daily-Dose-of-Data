# 10548_Top_Actor_Ratings_by_Genre

Determine the top actors based on their average movie rating within the genre they appear in most frequently.

For each actor:
- Identify their most frequent genre (i.e., the one they’ve appeared in the most).
- If there's a tie in genre count, choose the genre with the highest average rating for that actor.
- If there's still a tie in both count and rating, include all tied genres.

Then:
- Rank the resulting actor + genre pairs by their average rating in descending order.
- Return all actor + genre pairs that fall within the top 3 ranks (not just rows), including ties.
- Do not skip ranks; ties share the same rank, and the next rank follows sequentially.

**Table:** `top_actors_rating`

**Columns:**
- `actor_name` (text)
- `genre` (text)
- `movie_rating` (double)
- `movie_title` (text)
- `production_company` (text)
- `release_date` (date)
