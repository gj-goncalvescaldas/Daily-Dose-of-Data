# 9992_Artist_Appearance_Count

Find how many times each artist appeared on the Spotify ranking list.

You are given a table `spotify_worldwide_daily_song_ranking` that contains information about daily song rankings on Spotify. Each row in the table represents a specific song's ranking on a particular date and region. Your task is to count how many times each artist appears in the dataset.

Return the artist's name along with the number of times they appear in the dataset. The output should be ordered by the number of occurrences in descending order.

## Table: spotify_worldwide_daily_song_ranking

- `id`: bigint
- `position`: bigint
- `artist`: text
- `trackname`: text
- `region`: text
- `stream_date`: date
- `streams`: bigint
- `url`: text
