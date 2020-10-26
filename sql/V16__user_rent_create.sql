CREATE TABLE IF NOT EXISTS user_rent (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  rent_type ENUM("now", "book") NOT NULL,
  user_id INT NOT NULL,
  place_of_rent_id INT NOT NULL,
  payment_id BIGINT NOT NULL,
  lease_period_id BIGINT NOT NULL,
  worker_id INT NOT NULL DEFAULT -1,
  item_id BIGINT NOT NULL,
  PRIMARY KEY (id))
 ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;
