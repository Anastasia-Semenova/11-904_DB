ALTER TABLE discount 
ADD CONSTRAINT discount_company_id_fk
  FOREIGN KEY (company_id)
  REFERENCES company (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE discount 
ADD CONSTRAINT discount_service_user_id_fk
  FOREIGN KEY (service_user_id)
  REFERENCES service_user (id)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
