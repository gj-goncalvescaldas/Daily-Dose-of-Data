# 10547_Actor_Rating_Difference_Analysis

You are given a dataset containing information about actors, the films they have participated in, each film’s rating, and release date.

For each actor, determine the difference between the rating of their most recent film and the average rating of all their previous films. The average rating must exclude the most recent film.

If an actor has appeared in only one film, then:
- The `avg_rating` should be the rating of that single film,
- The `latest_rating` should be the same as the only film’s rating,
- The `rating_difference` should be 0.

Return a result that includes the following for each actor:
- Their name
- The average rating of all their films (excluding the most recent)
- The rating of their most recent film
- The difference between the two ratings

**Table:** `actor_rating_shift`

**Columns:**
- `actor_name`: text
- `film_rating`: double
- `film_title`: text
- `release_date`: date
