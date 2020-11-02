ALTER TABLE discount DROP FOREIGN KEY discount_service_user_id_fk,
DROP FOREIGN KEY discount_company_id_fk;

ALTER TABLE discount
DROP COLUMN service_user_id,
DROP COLUMN company_id,
DROP COLUMN destination,
DROP INDEX discount_service_user_id_fk,
DROP INDEX discount_company_id_fk;