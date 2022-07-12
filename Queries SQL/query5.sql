#Quais os anos com maiores produções de "Star Wars"

SELECT 
    sets.year, COUNT(themes.name) AS prod_star_wars
FROM
    sets
        INNER JOIN
    themes ON sets.theme_id = themes.id
WHERE
    themes.name = 'Star Wars'
ORDER BY prod_star_wars desc


