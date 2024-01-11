INSERT INTO Customer (customer_id, first_name, last_name, national_id, address_city, address_street, phone,
                      address_province)
VALUES (11, 'Harry', 'Kane', '123456781011', 'London', 'London', '+44796268462', '212 Baker Street');
###################
INSERT INTO _Order (order_id, customer_id, CDP_id, distributor_id, product_id, number_of_product, order_date_day,
                    order_date_year, order_date_month)
VALUES (11, 11, 5, 5, 5, 1, '18', '2023', '07');
###################
UPDATE Customer
SET phone = '+44796268462'
WHERE Customer.customer_id = 11;
###################
DELETE
FROM Customer
WHERE customer_id NOT IN (SELECT DISTINCT customer_id
                          FROM _Order);