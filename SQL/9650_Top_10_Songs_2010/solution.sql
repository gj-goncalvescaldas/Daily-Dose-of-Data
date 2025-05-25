SELECT 
    song_name,
    group_name,
    year_rank

FROM billboard_top_100_year_end

WHERE year= 2010 AND year_rank < 11

GROUP BY song_name


