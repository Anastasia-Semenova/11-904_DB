ALTER TABLE payment DROP FOREIGN KEY discount_payment_fk;
ALTER TABLE payment DROP COLUMN discount_id,
DROP INDEX discount_payment_fk;
