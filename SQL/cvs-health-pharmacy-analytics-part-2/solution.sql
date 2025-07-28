SELECT 
  manufacturer,
  COUNT(manufacturer) as drug_count,
  SUM(cogs - total_sales) as total_loss

FROM pharmacy_sales

WHERE cogs > total_sales

GROUP BY manufacturer

ORDER BY total_loss DESC 