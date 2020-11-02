CREATE TABLE service_user_company (
  company_id INT NOT NULL,
  service_user_id INT NOT NULL,
  CONSTRAINT service_user_id
    FOREIGN KEY (service_user_id)
    REFERENCES service_user (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT company_id_fk
    FOREIGN KEY (company_id)
    REFERENCES company (id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
