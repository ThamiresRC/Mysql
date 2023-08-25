-- MySQL Script generated by MySQL Workbench
-- Fri Aug 25 16:54:35 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_blogue_pessoal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_blogue_pessoal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_blogue_pessoal` DEFAULT CHARACTER SET utf8 ;
USE `db_blogue_pessoal` ;

-- -----------------------------------------------------
-- Table `db_blogue_pessoal`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blogue_pessoal`.`tb_temas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blogue_pessoal`.`tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blogue_pessoal`.`tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuarios` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_blogue_pessoal`.`tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_blogue_pessoal`.`tb_postagens` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(245) NOT NULL,
  `texto` VARCHAR(1000) NOT NULL,
  `data` DATE NULL,
  `tema_id` BIGINT NULL,
  `usuario_id` BIGINT NULL,
  `tb_temas_id` BIGINT NULL,
  `tb_usuarios_id` BIGINT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_tb_postagens_tb_temas_idx` (`tb_temas_id` ASC) VISIBLE,
  INDEX `fk_tb_postagens_tb_usuarios1_idx` (`tb_usuarios_id` ASC) VISIBLE,
  CONSTRAINT `fk_tb_postagens_tb_temas`
    FOREIGN KEY (`tb_temas_id`)
    REFERENCES `db_blogue_pessoal`.`tb_temas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagens_tb_usuarios1`
    FOREIGN KEY (`tb_usuarios_id`)
    REFERENCES `db_blogue_pessoal`.`tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;