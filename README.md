<h1 align="center">Lego Database</h1>
<img src="https://i.imgur.com/haqxTn5.png"> 

<h2><strong> Andamento do projeto  📈</strong></h2>
<img src="https://camo.githubusercontent.com/d04296ab32ba0006e2771106306abb9db46a72f32331ea85265b2c5770c80c19/68747470733a2f2f696d672e736869656c64732e696f2f776562736974653f646f776e5f636f6c6f723d436f6e636c7569646f266c6162656c3d537461747573267374796c653d666f722d7468652d62616467652675705f6d6573736167653d436f6e636c7569646f2675726c3d68747470732533412532462532466769746875622e636f6d2532467974616c6c6f6272756e6f25324650726f6a65746f46696e616c4d6f64756c6f33">  
<br>
<h2> Sobre o Projeto </h2>
A partir da Lego Database, uma database open source, filtramos e tratamos os dados das tabelas para obter informações que respondessem as perguntas elaboradas de forma que pudessem ser apresentadas através de gráficos. Desenvolvemos também um site, caso queira ver <a href="https://gabrielalvesfs.github.io/Lego-Database" target="_blank"> Clique Aqui! </a>

<br><br>
<h2> Tecnologias e Ferramentas Utilizadas</h2>

<img src="https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=whitee"> <img src="https://img.shields.io/badge/Supabase-181818?style=for-the-badge&logo=supabase&logoColor=white"> <img src="https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white"> <img src="https://img.shields.io/badge/Canva-%2300C4CC.svg?style=for-the-badge&logo=Canva&logoColor=white"> <img src="https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white"> <img src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white"> <img src="https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white"> <img src="https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white">

<br><br>
<h2>Gráficos e Queries </h2>
<h3> Query 01 - Quais foram os 10 anos que mais tiveram sets de lego criados? <h3>

<img src="https://gabrielalvesfs.github.io/Lego-Database/assets/img/query1.png" width="600px">
<details>
<pre>

<code>SELECT sets.year, COUNT(sets.year) AS sets_por_ano FROM sets
     GROUP BY sets.year
	 ORDER BY sets_por_ano DESC
	 LIMIT 10; </code>		 

</pre> 
</details>
 
<h3> Query 02 - Qual é o número de peças de cada cor? </h3>
<img src="https://gabrielalvesfs.github.io/Lego-Database/assets/img/query2-1.png" width="600px">
<details>
<pre>
<code>SELECT colors.name, SUM(inventory_parts.quantity) 
	AS `Quantidade de peças com essa cor`
	FROM inventory_parts
	INNER JOIN colors ON inventory_parts.color_id = colors.id
	WHERE colors.id <> 9999
	GROUP BY colors.name
	ORDER BY `Quantidade de peças com essa cor` DESC
	LIMIT 10; </code>		 
```
</pre>,
</details>


<h3> Query 03 - Quais são os 10 temas mais populares (mais feitos) de lego? <h3>

<img src="https://gabrielalvesfs.github.io/Lego-Database/assets/img/query3.png" width="600px">
<details>
<pre>
<code>SELECT sets.theme_id, COUNT(sets.theme_id) as tema_repetido FROM sets
GROUP BY sets.theme_id
ORDER BY tema_repetido DESC
LIMIT 10; </code>		 

 </pre> 
 </details>
 

<h3> Query 04 - Quais eram os temas mais usadas nos 10 anos que mais tiveram sets de lego criados? <h3>

<img src="https://gabrielalvesfs.github.io/Lego-Database/assets/img/tema.png" width="600px">
<details>
<pre>
<code>
SELECT year AS ano,
(
	SELECT theme_id AS tema FROM LEGO_sets
		WHERE year = anos.year
		GROUP BY theme_id
		HAVING COUNT(theme_id) > 0
		ORDER BY COUNT(theme_id) DESC
		LIMIT 1
),
(
	SELECT COUNT(theme_id) AS vezes_repetido FROM LEGO_sets
		WHERE year = anos.year
		GROUP BY theme_id
		ORDER BY vezes_repetido DESC
		LIMIT 1
)
FROM LEGO_sets AS anos
	WHERE year IN (2014, 2015, 2012, 2016, 2013, 2011, 2002, 2010, 2003, 2009)
	GROUP BY year
	ORDER BY year ASC; </code>		
</pre>
</details>


<h2> Requisitos </h2>
Neste projeto você e sua squad deverão montar um dashboard com base no conjunto de dados escolhidos por vocês, a fim de realizar uma apresentação com a exploração dos dados. 

**SPRINT 1:**

Os objetivos principais dessa sprint são:

-   Estruturar o esquema do banco de dados: A partir da avaliação do conjunto de dados fornecidos, modelar as tabelas do banco. Note que não é necessário mapear todas as colunas de todas as tabelas. Mantenha sua implementação simples construindo um modelo que atende às perguntas elaboradas pelo grupo
-   Realizar carga no banco: Com base no esquema desenhado e criado, subir os dados presentes nos arquivos para o banco de dados a fim de verificar o funcionamento da solução encontrada.
-   Ideação/Brainstorm sobre perguntas que podem ser respondidas pelos dados: Analise o conjunto de dados selecionado para que as perguntas sejam pertinentes. Neste primeiro momento, dê asas a imaginação. As perguntas geradas nesta etapa impactam diretamente as demais desta Sprint.

**SPRINT 2:**

Os objetivos principais dessa sprint são:

-   Criar visualizações dos dados com base nas perguntas elaboradas na sprint anterior (aqui vocês podem usar planilhas (Excel / Google), Metabase, Tableau, Power Bi, etc)
-   Montar uma apresentação a partir das perguntas e análise exploratória feita em cima do conjunto de dados selecionados

<h2> Integrantes </h2>
<a href="https://github.com/GabrielAlvesFS" target="_blank"> Gabriel Alves </a> <br>
<a href="https://github.com/bruxvr" target="_blank"> Bruna Xavier </a> <br>
<a href="https://github.com/luanaassisi" target="_blank"> Luana Assis</a> <br>
<a href="https://github.com/Marlonalvss" target="_blank"> Marlon Alves</a> <br>
<a href="https://github.com/matheushage" target="_blank"> Matheus Hage </a> 
