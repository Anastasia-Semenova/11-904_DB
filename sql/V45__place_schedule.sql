CREATE TABLE `db1`.`place_schedule` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `place_id` INT UNSIGNED NOT NULL,
  `day_of_week` ENUM("1", "2", "3", "4", "5", "6", "7") NOT NULL,
  `from` TIME NOT NULL,
  `to` TIME NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `place_id`
    FOREIGN KEY (`place_id`)
    REFERENCES `db1`.`place_of_rent` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);