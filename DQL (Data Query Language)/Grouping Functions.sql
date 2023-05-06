/*Grouping entries*/

SELECT totaulas, COUNT(*) FROM cursos
GROUP BY totaulas 
ORDER BY totaulas DESC;

SELECT carga, COUNT(carga), totaulas FROM cursos
WHERE totaulas = 30
GROUP BY carga
ORDER BY carga DESC;

SELECT ano, COUNT(*) FROM cursos
WHERE totaulas > 30
GROUP BY ano
HAVING ano > 2013 /*HAVING is like WHERE but only for groups and vice versa*/
ORDER BY COUNT(*) DESC;



SELECT carga, COUNT(*) from cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos) /*Higher than the total avg*/
ORDER BY COUNT(*) DESC;