ALTER TABLE payment 
ADD CONSTRAINT discount_payment_fk
  FOREIGN KEY (discount_id)
  REFERENCES discount (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;