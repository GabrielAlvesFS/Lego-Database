#Quais os anos com maiores produções de "Star Wars"

SELECT 
    sets.year, count(themes.name) AS prod_star_wars
FROM sets
INNER JOIN 
    themes ON sets.theme_id = themes.id
WHERE
    themes.name = 'Star Wars'
GROUP BY sets.year
ORDER BY prod_star_wars desc;

-- Query para o Supabase

SELECT 
    "LEGO_sets".year, count("LEGO_themes".name) AS prod_star_wars
FROM "LEGO_sets"
INNER JOIN 
    "LEGO_themes" ON "LEGO_sets".theme_id = "LEGO_themes".id
WHERE
    "LEGO_themes".name = 'Star Wars'
GROUP BY "LEGO_sets".year
ORDER BY prod_star_wars desc;


