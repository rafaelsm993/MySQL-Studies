-- Active: 1653704133215@@localhost@3306@records
INSERT INTO courses VALUES
('1', 'HTML4', 'HTML5 Course', '40', '37', '2014'),
('2', 'Algorithms', 'Programming Logic', '20', '15', '2014'),
('3', 'Photoshop', 'Photoshop CC Tips', '10', '8', '2014'),
('4', 'PGP', 'PHP Course for Beginners', '40', '20', '2010'),
('5', 'Jarva', 'Introduction to the Java language', '10', '29', '2000'),
('6', 'MySQL', 'MySQL Database', '30', '15', '2016'),
('7', 'Word', 'Full Word Course', '40', '30', '2016'),
('8', 'Sapateado', 'Danças Rítmicas', '40', '37', '2018'),
('9', 'Cozinha Árabe', 'Aprender a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

SELECT * FROM courses;

UPDATE courses
SET Name = 'HTML5'
WHERE idcourse = '1' /*Must have a condition, otherwise is gonna change everything*/
LIMIT 1;/*It will apply the command only for the first line of the table (GOOD HABIT)*/

UPDATE courses
SET Name = 'PHP', Year = '2015'
WHERE idcourse = '4'
LIMIT 1;

UPDATE courses
SET Name = 'Java', Hours = '40', Year = '2015'
WHERE idcourse = '5'
LIMIT 1;

/*Delete lines from the table*/
DELETE FROM courses
WHERE idcourse >= '8';


/*Delete all data of a table*/
TRUNCATE TABLE courses;

/*Show how the DATABASE/TABLE were created*/
SHOW CREATE DATABASE records;
SHOW CREATE TABLE courses;
SHOW CREATE TABLE person;