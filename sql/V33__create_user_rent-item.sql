CREATE TABLE user_rent_item (
  user_rent_id BIGINT UNSIGNED NOT NULL,
  item_id BIGINT UNSIGNED NOT NULL,
  CONSTRAINT item_id
    FOREIGN KEY (item_id)
    REFERENCES item (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT user_rent_id
    FOREIGN KEY (user_rent_id)
    REFERENCES user_rent (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
