CREATE TABLE discount_payment (
  discount_id INT NOT NULL,
  payment_id BIGINT UNSIGNED NOT NULL,
  CONSTRAINT payment_id
    FOREIGN KEY (payment_id)
    REFERENCES payment (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT discount_id
    FOREIGN KEY (discount_id)
    REFERENCES discount (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);