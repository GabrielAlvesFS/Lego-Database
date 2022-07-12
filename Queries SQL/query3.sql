-- 3 - Quais são os 10 temas mais populares (mais feitos) de lego?
SELECT sets.theme_id, COUNT(sets.theme_id) as tema_repetido FROM sets
  GROUP BY sets.theme_id
  ORDER BY tema_repetido DESC
  LIMIT 10;