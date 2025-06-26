WITH person_wins AS (
SELECT 
    nominee,
    SUM(winner) AS oscar_winnings

FROM oscar_nominees

GROUP BY nominee
)

SELECT 
    top_genre

FROM person_wins pw

JOIN nominee_information ni ON ni.name = pw.nominee

ORDER BY pw.oscar_winnings DESC, pw.nominee ASC

LIMIT 1