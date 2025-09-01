WITH year_gdp AS (SELECT 
  year,
  gdp,
  LAG(gdp) OVER (ORDER BY year ASC) as lasty_gdp
  
FROM usa_gdp 
  
ORDER BY year ASC)

SELECT 
  year,

  CONCAT(
    ROUND(
      (100 * gdp / lasty_gdp) - 100 , 2
    ) , '%'
  ) as yoy
FROM year_gdp

WHERE year between 1970 and 1980