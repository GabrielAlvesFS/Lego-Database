USE lego;

-- 2 Quais são os temas mais populares (mais feitos) de lego? = 10
SELECT sets.theme_id, COUNT(sets.theme_id) as qtd_uso FROM sets
  GROUP BY sets.theme_id
  ORDER BY qtd_uso DESC
  LIMIT 10;