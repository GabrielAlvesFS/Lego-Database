USE lego;

-- 1 Quais foram os anos que mais foram criados sets de lego?
SELECT sets.year, COUNT(sets.year) AS sets_por_ano FROM sets
  GROUP BY sets.year
  ORDER BY sets_por_ano DESC
  LIMIT 10;