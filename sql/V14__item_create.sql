CREATE TABLE IF NOT EXISTS item (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  item_name VARCHAR(45) NOT NULL,
  suitable_for_rent TINYINT(1) NOT NULL DEFAULT 1,
  cost DOUBLE(10,2) NOT NULL,
  season ENUM("all", "summer", "winter") NOT NULL,
  is_used_now TINYINT(1) NOT NULL DEFAULT 0,
  place_of_rent_id INT NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;