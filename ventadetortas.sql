-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Clientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Clientes` (
  `id_clientes` INT NOT NULL,
  `nombre` VARCHAR(100) NULL,
  `direccion` VARCHAR(45) NULL,
  `telefono` VARCHAR(15) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`id_clientes`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Tortas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Tortas` (
  `id_tortas` INT NOT NULL,
  `tipo` VARCHAR(50) NULL,
  `descripcion` VARCHAR(45) NULL,
  `precio` FLOAT NULL,
  PRIMARY KEY (`id_tortas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Pedidos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Pedidos` (
  `id_pedido` INT NOT NULL,
  `id_cliente` INT NULL,
  `id_torta` INT NULL,
  `id_metodo_pago` INT NULL,
  `fecha_pedido` DATE NULL,
  `cantidad` INT NULL,
  PRIMARY KEY (`id_pedido`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Metodos de Pago`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Metodos de Pago` (
  `id_metodo_ pago` INT NOT NULL,
  `metodo` VARCHAR(50) NULL,
  `descripcion` INT NULL,
  PRIMARY KEY (`id_metodo_ pago`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
