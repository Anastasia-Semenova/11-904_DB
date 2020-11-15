ALTER TABLE `service_user` 
ADD COLUMN `user_lastname` VARCHAR(45) NOT NULL AFTER `user_name`,
ADD COLUMN `telephone_number` INT(11) NULL AFTER `user_lastname`,
ADD COLUMN `email` VARCHAR(45) NULL AFTER `telephone_number`;