-- 4 - Quais eram os temas mais usadas nos 10 anos que mais tiveram sets de lego criados?

-- QUERY MYSQL:

SELECT year AS ano,
(
  SELECT theme_id AS tema FROM LEGO_sets
  WHERE year = anos.year
  GROUP BY theme_id
  HAVING COUNT(theme_id) > 0
  ORDER BY COUNT(theme_id) DESC 
  LIMIT 1
),
(
  SELECT COUNT(theme_id) AS vezes_repetido FROM LEGO_sets
  WHERE year = anos.year
  GROUP BY theme_id
  ORDER BY vezes_repetido DESC
  LIMIT 1
)
FROM LEGO_sets AS anos
  WHERE year IN (2014, 2015, 2012, 2016, 2013, 2011, 2002, 2010, 2003, 2009)
  GROUP by year
  ORDER BY year ASC;
  
  -- QUERY SUPABASE
  SELECT year,
(
  SELECT COUNT(theme_id) AS vezes_repetidos FROM "LEGO_sets"
  WHERE year = anos.year
  GROUP BY theme_id
  ORDER BY vezes_repetidos DESC
  LIMIT 1
),(
  SELECT theme_id FROM "LEGO_sets"
  WHERE year = anos.year
  GROUP BY theme_id
  HAVING COUNT(theme_id) > 0
  ORDER BY COUNT(theme_id) DESC 
  LIMIT 1
)
FROM "LEGO_sets" AS anos
  WHERE year IN (2014, 2015, 2012, 2016, 2013, 2011, 2002, 2010, 2003, 2009)
  GROUP by year
  ORDER BY year ASC;
  