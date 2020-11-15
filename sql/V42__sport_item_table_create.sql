CREATE TABLE `sport_item` (
  `sport_id` INT UNSIGNED NOT NULL,
  `item_id` BIGINT UNSIGNED NOT NULL,
  CONSTRAINT `sport_id`
    FOREIGN KEY (`sport_id`)
    REFERENCES `sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `item_id_fk`
    FOREIGN KEY (`item_id`)
    REFERENCES `item` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
