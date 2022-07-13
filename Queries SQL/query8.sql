# Todos os temas que foram abordados no banco de dados da lego

-- query para o MySql
  SELECT DISTINCT themes.id, themes.name AS temas FROM themes
  ORDER BY themes.id asc;
  
  -- query para o Supabase
  
  SELECT DISTINCT "LEGO_themes".id, "LEGO_themes".name AS temas FROM "LEGO_themes" 
  ORDER BY "LEGO_themes".id asc;