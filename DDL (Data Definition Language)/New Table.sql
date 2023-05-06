USE records;

CREATE TABLE IF NOT EXISTS Courses(
    Name VARCHAR(30) NOT NULL UNIQUE,/*(To values that must be unique)*/ 
    Description TEXT,
    Hours INT UNSIGNED,/*(To values that are not negative)*/
    Lessons INT UNSIGNED,
    Year YEAR DEFAULT '2016'
)

ALTER TABLE Courses
ADD COLUMN idcourse INT NOT NULL FIRST;


/*Make 'idcourse' as PRIMARY KEY*/
ALTER TABLE courses
ADD PRIMARY KEY(idcourse);