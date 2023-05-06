/*Create a column after a defined column*/
ALTER TABLE person 
ADD COLUMN Ocupation VARCHAR(10) AFTER Name;


/*Rename Table*/
ALTER TABLE test
RENAME TO person;


/*Changes the structure of a certain column*/
ALTER TABLE person
MODIFY COLUMN Ocupation VARCHAR(25) NOT NULL DEFAULT '';


/*Changes the position of the column to first*/
ALTER TABLE person
ADD COLUMN Ocupation VARCHAR(10) FIRST;


/*Delete a column*/
ALTER TABLE person
DROP COLUMN Ocupation;

/*Changes the column name and structure*/
ALTER TABLE person
CHANGE COLUMN Ocupation Job VARCHAR(25) NOT NULL DEFAULT '';

SELECT * from person
