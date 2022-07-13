-- 7. Quais foram os anos que tiveram menos de 50 sets criados?
-- QUERY MYSQL:

SELECT year, COUNT(year) AS sets_por_ano FROM LEGO_sets
  GROUP BY year
  HAVING COUNT(year) < 50; 

-- QUERY SUPABASE:
SELECT year, COUNT(year) AS sets_por_ano FROM "LEGO_sets"
  GROUP BY year
  HAVING COUNT(year) < 50; 