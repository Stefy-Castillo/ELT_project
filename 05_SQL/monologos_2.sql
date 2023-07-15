-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema monologos
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema monologos
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `monologos` DEFAULT CHARACTER SET utf8mb3 ;
USE `monologos` ;

-- -----------------------------------------------------
-- Table `monologos`.`locales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `monologos`.`locales` (
  `idlocal` VARCHAR(100) NOT NULL,
  `direccion` VARCHAR(100) NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `web` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idlocal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `monologos`.`cuentas_locales`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `monologos`.`cuentas_locales` (
  `idlocal` VARCHAR(100) NOT NULL,
  `cuenta` VARCHAR(100) NULL DEFAULT NULL,
  `precio` FLOAT NULL DEFAULT NULL,
  `nota` FLOAT NULL DEFAULT NULL,
  `opiniones` VARCHAR(45) NULL DEFAULT NULL,
  `locales_idlocal` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idlocal`),
  INDEX `fk_cuentas_locales_locales1_idx` (`locales_idlocal` ASC) VISIBLE,
  CONSTRAINT `fk_cuentas_locales_locales1`
    FOREIGN KEY (`locales_idlocal`)
    REFERENCES `monologos`.`locales` (`idlocal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `monologos`.`entradas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `monologos`.`entradas` (
  `idlocal` VARCHAR(100) NOT NULL,
  `puntuacione` FLOAT NULL DEFAULT NULL,
  `valoracionese` FLOAT NULL DEFAULT NULL,
  `locales_idlocal` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idlocal`),
  INDEX `fk_entradas_locales1_idx` (`locales_idlocal` ASC) VISIBLE,
  CONSTRAINT `fk_entradas_locales1`
    FOREIGN KEY (`locales_idlocal`)
    REFERENCES `monologos`.`locales` (`idlocal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `monologos`.`facebook`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `monologos`.`facebook` (
  `idlocal` VARCHAR(100) NOT NULL,
  `puntuacionf` FLOAT NULL DEFAULT NULL,
  `valoracionesf` FLOAT NULL DEFAULT NULL,
  `locales_idlocal` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idlocal`),
  INDEX `fk_facebook_locales1_idx` (`locales_idlocal` ASC) VISIBLE,
  CONSTRAINT `fk_facebook_locales1`
    FOREIGN KEY (`locales_idlocal`)
    REFERENCES `monologos`.`locales` (`idlocal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `monologos`.`google`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `monologos`.`google` (
  `idlocal` VARCHAR(100) NOT NULL,
  `valoraciong` FLOAT NULL DEFAULT NULL,
  `reseñasg` INT NULL DEFAULT NULL,
  `locales_idlocal` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idlocal`, `locales_idlocal`),
  INDEX `fk_google_locales1_idx` (`locales_idlocal` ASC) VISIBLE,
  CONSTRAINT `fk_google_locales1`
    FOREIGN KEY (`locales_idlocal`)
    REFERENCES `monologos`.`locales` (`idlocal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `monologos`.`shows`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `monologos`.`shows` (
  `idshow` VARCHAR(100) NOT NULL,
  `tipo` VARCHAR(45) NULL DEFAULT NULL,
  `precio` FLOAT NULL DEFAULT NULL,
  `duracion` FLOAT NULL DEFAULT NULL,
  `artista` VARCHAR(45) NULL DEFAULT NULL,
  `nota` FLOAT NULL DEFAULT NULL,
  `opiniones` FLOAT NULL DEFAULT NULL,
  `locales_idlocal` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idshow`),
  INDEX `fk_shows_locales_idx` (`locales_idlocal` ASC) VISIBLE,
  CONSTRAINT `fk_shows_locales`
    FOREIGN KEY (`locales_idlocal`)
    REFERENCES `monologos`.`locales` (`idlocal`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
