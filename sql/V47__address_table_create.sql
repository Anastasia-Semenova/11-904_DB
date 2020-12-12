CREATE TABLE `address` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `country` VARCHAR(45) NOT NULL,
  `region` VARCHAR(45) NOT NULL,
  `district` VARCHAR(45) NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `building` VARCHAR(45) NOT NULL,
  `premises` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));
