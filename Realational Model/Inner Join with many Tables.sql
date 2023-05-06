/*
 _________  n                     n  _____                                         _________  1        n  _______   n       1  _____
|GAFANHOTO| ------ <ASSISTE> ------ |CURSO|                                       |GAFANHOTO| ----<>---- |ASSISTE| ----<>---- |CURSO|  

*id (Primary Key)                  *idcurso (Primary Key)                                               *id (Primary Key)
*nome                              *nome                            =======>                            *data
*sexo                              *descricao                                                           *idgafanhoto (Foreing Key)
*nascimento                        *aulas                                                               *idcurso (Foreign Key)


Create table from the ASSISTE entity like the Diagram shows*/

CREATE TABLE gafanhoto_assiste_curso(
    id INT NOT NULL AUTO_INCREMENT,
    data date,
    idgafanhoto int,
    idcurso int,
    PRIMARY KEY (id),
    FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
    FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
);

/*Using two joins to get the result*/
SELECT g.nome 'Nome', c.nome 'Curso' FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN cursos c
ON a.idcurso = c.idcurso
ORDER BY g.nome ASC;