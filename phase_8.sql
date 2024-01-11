CREATE TRIGGER check_product_brand
BEFORE INSERT ON Product
FOR EACH ROW
BEGIN
    DECLARE brand_id_check VARCHAR(100);
    SELECT brand_id INTO brand_id_check FROM Brand WHERE brand_id = NEW.brand_id;
    IF EXISTS (SELECT * FROM Product WHERE barcode = NEW.barcode AND brand_id <> brand_id_check) THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'product with the same barcode and a different brand_id already exists';
    END IF;
END;

INSERT INTO Product (product_id,brand_id, product_name, weight, barcode)
VALUES (1,2 ,'ice_cream', 10, 100000000000);

CREATE TRIGGER check_order_duplicate_product_id
BEFORE INSERT ON _Order
FOR EACH ROW
BEGIN
    IF EXISTS (
        SELECT *
        FROM _Order
        WHERE product_id = NEW.product_id
        AND order_id != NEW.order_id
    ) THEN
        SIGNAL SQLSTATE '45001'
        SET MESSAGE_TEXT = 'Duplicate order with same product_id and different order_id';
    END IF;
END;

INSERT INTO _Order (order_id, customer_id, CDP_id, distributor_id,product_id,number_of_product,
                    order_date_day, order_date_year, order_date_month)
VALUES (12, 9, 1,1,1, 3, '18', '2022', '07');




