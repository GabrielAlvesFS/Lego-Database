-- 4 - Quais eram os temas mais usadas nos anos que foram criados mais sets de lego?

SELECT sets.year, sets.theme_id, COUNT(sets.theme_id) AS vezes_repetido FROM sets 
  WHERE sets.year IN (2014, 2015, 2012, 2016, 2013, 2011, 2002, 2010, 2003, 2009)
  GROUP BY sets.theme_id, year
  ORDER BY vezes_repetido DESC;