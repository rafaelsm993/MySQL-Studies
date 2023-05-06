INSERT INTO person 
(id, Name, Birth, Genre, Weight, Height, Nationality)
VALUES
('1','Peter', '1998-2-12','M', '78.5', '1.92', 'USA');


/*Not necessary define an ID, because of the constraint. (AUTO_INCREMENT)*/
INSERT INTO person
(Name, Birth, Genre, Weight, Height, Nationality)
VALUES
('Melissa', '2000-04-1','F', '55.2', '1.65', 'Brasil');

/*Using DEFAULT command... Contraint --> DEFAULT 'Brasil'*/
INSERT INTO person
(Name, Birth, Genre, Weight, Height, Nationality)
VALUES
('John', '1997-05-15','M', '87.2', '1.82', DEFAULT);


INSERT INTO person VALUES /*Not necessary define each column if you the input format is in the order*/
(DEFAULT, 'Kyle', '2002-06-21', 'M', '78.2', '1.72', 'Netherlands'),
(DEFAULT, 'Joao', '1997-12-12', 'M', '88.9', '1.84', DEFAULT),
(DEFAULT, 'Cláudio', '1922-1-14', 'M', '113.22', '1.77', DEFAULT),
(DEFAULT, 'Gabriela', '2004-07-15', 'F', '54', '1.62', DEFAULT);



