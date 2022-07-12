USE lego;

-- 2 Qual é o número de peças de cada cor?
SELECT  colors.name, SUM(inventory_parts.quantity) AS `Quantidade de peças com essa cor` FROM inventory_parts
  INNER JOIN colors ON inventory_parts.color_id = colors.id
  WHERE colors.id <> 9999
  GROUP BY colors.name
  ORDER BY `Quantidade de peças com essa cor` DESC
  LIMIT 10;
  
-- Query para o Supabase :bug: fix: Rephrasing Questions
SELECT "LEGO_colors".name, SUM("LEGO_inventory_parts".quantity) AS quantidade_de_pecas_com_a_cor FROM "LEGO_inventory_parts"
  INNER JOIN "LEGO_colors" ON "LEGO_inventory_parts".color_id = "LEGO_colors".id
  WHERE "LEGO_colors".id <> 9999
  GROUP BY "LEGO_colors".name
  ORDER BY quantidade_de_pecas_com_a_cor DESC
  LIMIT 10;
