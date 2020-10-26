CREATE TABLE IF NOT EXISTS payment (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  payment_value DOUBLE(10,2) NOT NULL,
  payment_type ENUM("card", "cash") NOT NULL,
  is_cost_with_dscount TINYINT(1) NOT NULL DEFAULT 0,
  discount_id INT NOT NULL DEFAULT -1,
  PRIMARY KEY (id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
