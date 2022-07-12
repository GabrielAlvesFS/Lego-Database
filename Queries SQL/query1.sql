USE lego;

-- 1 Quais foram os 10 anos que mais tiveram sets de lego criados?
SELECT sets.year, COUNT(sets.year) AS sets_por_ano FROM sets
  GROUP BY sets.year
  ORDER BY sets_por_ano DESC
  LIMIT 10;
  
  
-- Query para o Supabase
SELECT year, COUNT(year) AS sets_por_ano FROM "LEGO_sets"
  GROUP BY year
  ORDER BY sets_por_ano DESC
  LIMIT 10;
