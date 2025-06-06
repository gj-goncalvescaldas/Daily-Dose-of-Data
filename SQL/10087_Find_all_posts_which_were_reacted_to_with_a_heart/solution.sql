SELECT
    DISTINCT p.post_id,
    p.poster,
    p.post_text,
    p.post_keywords,
    p.post_date

FROM facebook_posts p

JOIN facebook_reactions r ON p.post_id = r.post_id AND r.reaction = 'heart'

