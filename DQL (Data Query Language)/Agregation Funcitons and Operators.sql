USE cadastro;

/*LIKE Operator*/
SELECT * FROM cursos
WHERE nome LIKE 'p%'; /* '%' = Wildcard / Can be anything | '%p%' <-> '%p'*/ 

SELECT * FROM cursos
WHERE nome NOT LIKE 'p%'; /*With NOT function*/

SELECT * FROM cursos
WHERE nome LIKE 'p__'; /* '_' = Insertion / Must have anything in the underlines | '_p_' <-> '_p'*/

SELECT * FROM cursos
WHERE nome NOT LIKE 'p__';

/*DISTINCT Operator*/
SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade ASC;

/*COUNT Operator*/
SELECT COUNT(*) FROM cursos /*Count how many entries have*/
WHERE carga > 40;

/*MAX Operator*/
SELECT MAX(totaulas) FROM cursos /*Pick the highest data*/
WHERE ano = '2016'; 

/*MIN Operator*/
SELECT MIN(totaulas) FROM cursos /*Pick the lowest data*/
WHERE ano = '2016'; 

/*SUM Operator*/
SELECT SUM(totaulas) FROM cursos; /*Sum everything from a column*/

/*AVG Operator*/
SELECT AVG(carga) FROM cursos; /*Average everything from a column*/






