ALTER TABLE place_of_rent 
ADD CONSTRAINT company_id
  FOREIGN KEY (company_id)
  REFERENCES company (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
