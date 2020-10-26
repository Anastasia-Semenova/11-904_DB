CREATE TABLE IF NOT EXISTS discount (
  id INT NOT NULL AUTO_INCREMENT,
  discount_name VARCHAR(45) NOT NULL,
  disount_value DOUBLE(4,2) NOT NULL,
  destination ENUM("company", "user") NOT NULL,
  company_id INT NOT NULL DEFAULT -1,
  user_id INT NOT NULL DEFAULT -1,
  PRIMARY KEY (id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
