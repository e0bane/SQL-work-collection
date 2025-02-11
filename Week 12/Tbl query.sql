-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema UseFulFunctions
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema UseFulFunctions
-- -----------------------------------------------------


-- -----------------------------------------------------
-- Table `UseFulFunctions`.`functionPrefixesTbl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS functionPrefixesTbl(
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Prefix` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UseFulFunctions`.`languagesTbl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS languagesTbl (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Language` VARCHAR(45) NOT NULL,
  `prefixID` INT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `Language_UNIQUE` (`Language` ASC) VISIBLE,
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `prefixID_idx` (`prefixID` ASC) VISIBLE,
  CONSTRAINT `prefixID`
    FOREIGN KEY (`prefixID`)
    REFERENCES functionPrefixesTbl (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UseFulFunctions`.`purposesTbl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS purposesTbl (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Purpose` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `Purpose_UNIQUE` (`Purpose` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UseFulFunctions`.`dataTypesTbl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS dataTypesTbl (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `dataType` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  UNIQUE INDEX `dataType_UNIQUE` (`dataType` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `UseFulFunctions`.`functionsTbl`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS functionsTbl (
  `ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Definition` VARCHAR(10000) NOT NULL,
  `purposeID` INT NULL,
  `languageID` INT NOT NULL,
  `dataTypeID` INT NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE,
  INDEX `PurposeID_idx` (`purposeID` ASC) VISIBLE,
  INDEX `languageID_idx` (`languageID` ASC) VISIBLE,
  INDEX `dataTypeID_idx` (`dataTypeID` ASC) VISIBLE,
  CONSTRAINT `purposeID`
    FOREIGN KEY (`purposeID`)
    REFERENCES purposesTbl (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `languageID`
    FOREIGN KEY (`languageID`)
    REFERENCES languagesTbl (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `dataTypeID`
    FOREIGN KEY (`dataTypeID`)
    REFERENCES dataTypesTbl (`ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
