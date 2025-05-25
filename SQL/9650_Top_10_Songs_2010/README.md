# 9650_Top_10_Songs_2010

Find the top 10 ranked songs from the year 2010 in the `billboard_top_100_year_end` table. The output should include the **year_rank**, **group_name**, and **song_name**. Each song should appear only once in the result, meaning no duplicate songs should be shown. The final output should be sorted in ascending order based on the song's rank.

### Table: billboard_top_100_year_end

| Column Name | Data Type |
|-------------|------------|
| year        | bigint     |
| year_rank   | bigint     |
| group_name  | text       |
| artist      | text       |
| song_name   | text       |
| id          | bigint     |
