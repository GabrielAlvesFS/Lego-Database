-- 3 - Quais são os 10 temas mais populares (mais feitos) de lego?

-- QUERY MYSQL:

SELECT sets.theme_id, COUNT(sets.theme_id) as tema_repetido FROM sets
  GROUP BY sets.theme_id
  ORDER BY tema_repetido DESC
  LIMIT 10;
  
  -- QUERY SUPABASE:
  
  SELECT theme_id, COUNT(theme_id) as tema_repetido FROM "LEGO_sets"
  GROUP BY theme_id
  ORDER BY tema_repetido DESC
  LIMIT 10;