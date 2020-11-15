CREATE TABLE `user_document` (
  `document_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  CONSTRAINT `user_id`
    FOREIGN KEY (`user_id`)
    REFERENCES `service_user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `document_id`
    FOREIGN KEY (`document_id`)
    REFERENCES  `document` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);