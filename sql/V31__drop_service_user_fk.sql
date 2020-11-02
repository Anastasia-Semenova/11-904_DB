ALTER TABLE service_user DROP FOREIGN KEY company_user_id;
ALTER TABLE service_user DROP INDEX company_user_id;

ALTER TABLE service_user DROP COLUMN company_id;
