#Quais os anos com maiores produções de "Star Wars"
# Query para o Supabase

SELECT 
    "LEGO_sets".year, count("LEGO_themes".name) AS prod_star_wars
FROM "LEGO_sets"
INNER JOIN 
    "LEGO_themes" ON "LEGO_sets".theme_id = "LEGO_themes".id
WHERE
    "LEGO_themes".name = 'Star Wars'
GROUP BY "LEGO_sets".year
ORDER BY prod_star_wars desc;



