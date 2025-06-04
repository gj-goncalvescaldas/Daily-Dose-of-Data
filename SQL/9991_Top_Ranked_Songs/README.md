# 9991_Top_Ranked_Songs

Find songs that have ranked in the top position on Spotify. You need to determine how many times each track reached the number one spot. Your output should include the track name and the number of times it was ranked #1. The result must be sorted in descending order by the number of times the song achieved the top position.

## Table: spotify_worldwide_daily_song_ranking

### Columns:
- **artist**: text — name of the artist
- **id**: bigint — unique identifier of the record
- **position**: bigint — song's ranking position
- **region**: text — geographical region
- **stream_date**: date — date of the ranking
- **streams**: bigint — number of streams
- **trackname**: text — name of the track
- **url**: text — URL to the track
