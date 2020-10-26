ALTER TABLE user_rent 
ADD CONSTRAINT user_rent_service_user_id_fk
  FOREIGN KEY (service_user_id)
  REFERENCES service_user (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT user_rent_place_of_rent_id_fk
  FOREIGN KEY (place_of_rent_id)
  REFERENCES place_of_rent (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT user_rent_payment_id_fk
  FOREIGN KEY (payment_id)
  REFERENCES payment (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT user_rent_lease_period_id_fk
  FOREIGN KEY (lease_period_id)
  REFERENCES lease_period (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT user_rent_worker_id_fk
  FOREIGN KEY (worker_id)
  REFERENCES worker (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT user_rent_item_id_fk
  FOREIGN KEY (item_id)
  REFERENCES item (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;