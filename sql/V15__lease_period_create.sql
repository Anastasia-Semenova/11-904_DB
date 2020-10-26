CREATE TABLE IF NOT EXISTS lease_period (
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  start_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  end_time DATETIME NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;