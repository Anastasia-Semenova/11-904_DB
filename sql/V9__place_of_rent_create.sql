CREATE TABLE IF NOT EXISTS place_of_rent (
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  place_of_rent_name VARCHAR(45) NOT NULL,
  comapy_id INT NOT NULL,
  place_of_rent_address VARCHAR(100) NOT NULL,
  is_workind_now TINYINT(1) NOT NULL DEFAULT 1,
  company_id INT NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;