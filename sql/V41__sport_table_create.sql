CREATE TABLE `sport` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `rules` TEXT NULL,
  `type` ENUM("personal", "team") NOT NULL,
  PRIMARY KEY (`id`));
