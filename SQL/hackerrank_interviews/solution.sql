Select 
    c.contest_id, 
    c.hacker_id, 
    c.name, 
    sum(s.total_submissions) as total_submissions, 
    sum(s.total_accepted_submissions) as total_accepted_submissions, 
    sum(v.total_views) as total_views, 
    sum(v.total_unique_views) as total_unique_views 
from contests c 

JOIN colleges cl 
    on c.contest_id = cl.contest_id 
    
JOIN challenges ch on cl.college_id = ch.college_id 

LEFT JOIN 
    (Select 
        challenge_Id, 
        sum(total_views) as total_views, 
        sum(total_unique_views) as total_unique_views 
    from view_stats 
    group by challenge_Id) v 
        on ch.challenge_id = v.challenge_id 
        
LEFT JOIN 
    (Select challenge_id,
    sum(total_submissions) as total_submissions, 
    sum(total_accepted_submissions) as total_accepted_submissions 
    from submission_stats 
    group by challenge_Id) s 
        on ch.challenge_id = s.challenge_id 
        
group by c.contest_id, c.hacker_id, c.name 

Having 
    sum(s.total_submissions) >0 
    OR sum(s.total_accepted_submissions) > 0 
    OR sum(v.total_views) > 0 
    OR sum(v.total_unique_views) > 0 
    
order by c.contest_id