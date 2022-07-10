USE lego;

-- 3 Quais são o número de peças de cada cor?
SELECT  colors.name, SUM(inventory_parts.quantity) AS `Quantidade de peças com essa cor` FROM inventory_parts
  INNER JOIN colors ON inventory_parts.color_id = colors.id
  WHERE colors.id <> 9999
  GROUP BY colors.name
  ORDER BY `Quantidade de peças com essa cor` DESC
  LIMIT 10;