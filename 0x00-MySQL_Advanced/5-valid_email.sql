-- 5-valid_email.sql
-- Create a trigger to reset valid_email attribute only when email is changed

DELIMITER //

CREATE TRIGGER reset_valid_email_after_update
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    IF NEW.email <> OLD.email THEN
        SET NEW.valid_email = 0;
    END IF;
END //

DELIMITER ;
