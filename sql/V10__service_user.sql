CREATE TABLE IF NOT EXISTS service_user (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  user_name VARCHAR(45) NOT NULL,
  comapy_id INT NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
