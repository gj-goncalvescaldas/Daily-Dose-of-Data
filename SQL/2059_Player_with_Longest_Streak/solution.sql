WITH ranked_matches AS (
  SELECT
    player_id,
    match_date,
    match_result,
    ROW_NUMBER() OVER (PARTITION BY player_id ORDER BY match_date) 
      - ROW_NUMBER() OVER (PARTITION BY player_id, match_result ORDER BY match_date) AS grp
  FROM players_results
),
win_streaks AS (
  SELECT
    player_id,
    COUNT(*) AS streak_length
  FROM ranked_matches
  WHERE match_result = 'W'
  GROUP BY player_id, grp
),
max_streaks AS (
  SELECT
    player_id,
    MAX(streak_length) AS streak_length
  FROM win_streaks
  GROUP BY player_id
),
final_result AS (
  SELECT
    *
  FROM max_streaks
  WHERE streak_length = (SELECT MAX(streak_length) FROM max_streaks)
)
SELECT * FROM final_result
ORDER BY player_id;
