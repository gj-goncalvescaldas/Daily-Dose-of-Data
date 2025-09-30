WITH visits AS (  
  SELECT
      COUNT(*) AS visits

  FROM admissions

  GROUP BY admission_date )
  
SELECT 
	MAX(visits),
    MIN(visits),
    ROUND(AVG(visits), 2)

FROM visits