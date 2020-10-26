ALTER TABLE service_user 
ADD CONSTRAINT company_user_id
  FOREIGN KEY (company_id)
  REFERENCES company (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
