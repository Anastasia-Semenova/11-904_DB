ALTER TABLE `place_of_rent` 
ADD CONSTRAINT `address_id`
  FOREIGN KEY (`address_id`)
  REFERENCES `address` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;