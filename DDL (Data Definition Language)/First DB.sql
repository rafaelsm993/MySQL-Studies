CREATE DATABASE Records;

/*Para utilizar acentos
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;
*/

USE Records;
CREATE TABLE IF NOT EXISTS Person(
    id INT NOT NULL AUTO_INCREMENT,
    Name VARCHAR(30) NOT NULL,
    Birth DATE,
    Genre ENUM('M', 'F')/*Only M or F will be acceptable values*/,
    Weight DECIMAL(5, 2)/*000,00*/,
    Height DECIMAL(3, 2)/*0,00*/,
    Nationality VARCHAR(25) DEFAULT 'Brasil',
    PRIMARY KEY(id)
) /*DEFAULT CHARSET = utf8;*/


