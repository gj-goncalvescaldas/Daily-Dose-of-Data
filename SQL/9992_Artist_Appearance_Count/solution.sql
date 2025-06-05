SELECT 
    artist,
    COUNT(*) AS cnt

FROM spotify_worldwide_daily_song_ranking

GROUP BY artist

ORDER BY cnt DESC