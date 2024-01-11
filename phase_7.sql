ALTER TABLE Product
ADD COLUMN is_sold BOOLEAN DEFAULT FALSE;

UPDATE Product
SET is_sold = TRUE
WHERE product_id IN (
    SELECT DISTINCT product_id
    FROM _Order
);

DROP PROCEDURE IF EXISTS transaction_;
CREATE PROCEDURE transaction_()
BEGIN
    DECLARE _rollback BOOL DEFAULT 0;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET _rollback = 1;
    START TRANSACTION;
    INSERT INTO _Order (order_id, customer_id, CDP_id, distributor_id, product_id, number_of_product, order_date_day, order_date_year, order_date_month)
    VALUES (15, 1, 13, 3, 13, 1, 27, 2023, 6);

    UPDATE Product
    SET is_sold = true
    WHERE product_id = 13;

    UPDATE Company_Distributor_Product
    SET count = count - 1
    WHERE CDP_id = 13;
    IF _rollback THEN
        ROLLBACK;
    ELSE
        COMMIT;
    END IF;
END;


