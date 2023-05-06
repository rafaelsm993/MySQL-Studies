-- Active: 1653704133215@@localhost@3306@cadastro
/*Create a Foreing Key*/
ALTER TABLE gafanhotos ADD cursopreferido int;

ALTER TABLE gafanhotos ADD FOREIGN KEY (cursopreferido)
REFERENCES cursos(idcurso);


DELETE FROM cursos WHERE idcurso = 6; /*Should return an error because the foreign key is being used*/
DELETE FROM cursos where idcurso = 28; /*Must execute with no errors because the values is not being used*/


/*How to SELECT using INNER JOIN*/
SELECT gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano FROM gafanhotos INNER JOIN cursos
on cursos.idcurso = gafanhotos.cursopreferido
ORDER BY gafanhotos.nome ASC;

/*Simplified way to do*/
SELECT g.nome, g.profissao, c.nome , c.ano
FROM gafanhotos as g JOIN cursos as c
ON g.cursopreferido = c.idcurso;


/*How to SELECT using RIGHT/LEFT OUTER JOINS*/
SELECT g.nome, c.nome FROM gafanhotos as g 
LEFT OUTER JOIN cursos as c
ON g.cursopreferido = c.idcurso;

SELECT g.nome, c.nome FROM gafanhotos as g
RIGHT OUTER JOIN cursos as c
ON g.cursopreferido = c.idcurso
ORDER BY g.nome DESC;

