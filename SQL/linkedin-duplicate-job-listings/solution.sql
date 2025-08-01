SELECT COUNT(*) AS duplicate_companies
FROM (
  SELECT company_id
  FROM job_listings 
  GROUP BY company_id, title, title
  HAVING COUNT(*) > 1
) AS duplicates