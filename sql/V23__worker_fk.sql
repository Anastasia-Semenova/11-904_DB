ALTER TABLE worker 
ADD CONSTRAINT place_of_rent_worker_fk
  FOREIGN KEY (place_of_rent_id)
  REFERENCES place_of_rent (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;