use u937509157_omarb;

CREATE TABLE IF NOT EXISTS hintsTbl (
    ID INT NOT NULL AUTO_INCREMENT,
    Hint VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS locationTbl (
    ID INT NOT NULL AUTO_INCREMENT,
    zipCode INT NOT NULL,
    Address VARCHAR(45) NOT NULL,
    Country VARCHAR(25),
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS playersTbl (
    ID INT NOT NULL AUTO_INCREMENT UNIQUE,
    Age INT NOT NULL,
    firstName VARCHAR(25) NOT NULL,
    middleName VARCHAR(25),
    lastName VARCHAR(25) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE IF NOT EXISTS hostTbl (
    ID INT NOT NULL AUTO_INCREMENT UNIQUE,
    Age INT NOT NULL,
    firstName VARCHAR(25) NOT NULL,
    middleName VARCHAR(25),
    lastName VARCHAR(25) NOT NULL,
    PRIMARY KEY (ID)
);

INSERT INTO hintsTbl(Hint)
VALUES("It is a popular name"),
("It is used for outdoor lights"),
("Mongolia is in the same continent"),
("He is the namesake for teddy bears"),
("It if from a meme");

INSERT INTO locationTbl(zipCode, Address)
VALUES(85283, "2627 W Baseline Rd"),
(85283, "2627 W Baseline Rd"),
(85283, "2627 W Baseline Rd"),
(85283, "2627 W Baseline Rd"),
(85283, "2627 W Baseline Rd");

INSERT INTO playersTbl(Age, firstName, lastName)
VALUES(20, "El Hadji", "Bane"),
(21, "Zena", "Bane"),
(15, "Seydi", "Diop"),
(30, "Jonh", "Doe"),
(30, "Jane", "Doe");

INSERT INTO hostTbl(Age, firstName, lastName)
VALUES(37, "Lebron", "James"),
(40, "Uzinlaay", "Diop"),
(25, "Elizabeth", "Johnson"),
(33, "Marco", "Polo"),
(28, "Rojers", "Gol");