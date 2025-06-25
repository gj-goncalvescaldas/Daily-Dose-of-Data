### 2059_Player_with_Longest_Streak

You are given a table called `players_results` containing information about tennis matches. Each row represents a match result for a specific player. The table includes the match date, result (either 'W' for win or 'L' for loss), and the player ID.

Your task is to determine the longest consecutive winning streak for each player. A streak consists of consecutive matches won ('W') by a player and ends when the player loses ('L') or their match records end. 

The output should include the `player_id` and the corresponding `streak_length` for the longest winning streak. If multiple players have the same longest streak, include all of them.

#### Table: players_results

- `match_date`: date of the match
- `match_result`: result of the match, either 'W' (win) or 'L' (loss)
- `player_id`: unique identifier of the player
