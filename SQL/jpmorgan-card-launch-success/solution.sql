WITH creditcard_launches AS (

SELECT 
  card_name, 
  MIN(TO_DATE(issue_year || '-' || issue_month || '-01', 'YYYY-MM-DD')) as launche

FROM monthly_cards_issued

GROUP BY card_name
)

SELECT
  i.card_name,
  SUM(i.issued_amount) AS issued_amount
  

FROM monthly_cards_issued i

INNER JOIN creditcard_launches l 
  ON i.card_name = l.card_name
  AND i.issue_year = EXTRACT(YEAR FROM l.launche)
  AND i.issue_month = EXTRACT(MONTH FROM l.launche)
  
GROUP BY i.card_name

ORDER BY issued_amount DESC