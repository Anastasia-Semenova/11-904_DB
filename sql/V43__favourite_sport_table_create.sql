CREATE TABLE `favourite_sport` (
  `sport_id` INT UNSIGNED NOT NULL,
  `user_id` INT NOT NULL,
  CONSTRAINT `sport_id_fk1`
    FOREIGN KEY (`sport_id`)
    REFERENCES `sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `user_id_fk1`
    FOREIGN KEY (`user_id`)
    REFERENCES `service_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
