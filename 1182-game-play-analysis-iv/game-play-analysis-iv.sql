/*
SELECT ROUND(
    COUNT(DISTINCT a1.player_id)  / (SELECT COUNT(DISTINCT player_id) FROM Activity)
    ,2) AS fraction
FROM Activity a1
JOIN Activity a2 
    ON a1.player_id = a2.player_id and DATEDIFF(a2.event_date, a1.event_date) = 1 and a1.event_date = (
        SELECT MIN(event_date)
        FROM Activity
        WHERE player_id = a1.player_id
    )
*/
select
    round(count(a2.player_id) / count(a1.player_id), 2) as fraction
from
(
    select
        player_id,
        min(event_date) as first_event_date
    from Activity
    group by player_id
) as a1
left outer join Activity as a2
on a1.player_id = a2.player_id and a1.first_event_date = date_sub(a2.event_date, interval 1 day)