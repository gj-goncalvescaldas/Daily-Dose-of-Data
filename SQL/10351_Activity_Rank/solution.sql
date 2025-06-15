SELECT
    from_user,
    COUNT(*) as total_emails,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC, from_user ASC)

FROM google_gmail_emails

GROUP BY from_user