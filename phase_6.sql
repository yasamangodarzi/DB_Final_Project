CREATE VIEW  distributor_distributes AS
SELECT Product.product_id,Product.barcode,Product.product_name, Product.weight,Product.brand_id,
       Distributor.distributor_id ,Distributor.address_city,Distributor.address_province,Distributor.distributor_name,Distributor.address_street,Distributor.email,Distributor.work_time
FROM Distributor
JOIN Company_Distributor_Product on Distributor.distributor_id = Company_Distributor_Product.distributor_id
JOIN Product on Company_Distributor_Product.product_id = Product.product_id;
###################
CREATE VIEW customer_orders AS
SELECT O.customer_id, first_name, last_name, national_id, Customer.address_province, Customer.address_city, Customer.address_street, phone, order_id,
       number_of_product, order_date_day, order_date_year, order_date_month, CDP.distributor_id, CDP.product_id, company_id, price
FROM Customer
join _Order O on Customer.customer_id = O.customer_id
JOIN Company_Distributor_Product CDP on CDP.CDP_id = O.CDP_id
WHERE Customer.customer_id IN (select customer_id
from _Order);
###################
CREATE VIEW product_type_brand_company AS
SELECT P.product_id, P.product_name, weight, barcode, T.type_id, T.type_name, B.brand_id, B.brand_name,
       B.create_date_day, B.create_date_year, B.create_date_month, C.company_id, company_name,
       C.create_date_day as company_create_day, C.create_date_year as company_create_year, C.create_date_month as company_create_month, serial_number,
       central_address_province, central_address_city, central_address_street
FROM Product P
Join Brand B on B.brand_id = P.brand_id
JOIN Brand_Type_Product BTP on P.product_id = BTP.product_id and B.brand_id=BTP.brand_id
JOIN Types T on T.type_id = BTP.type_id
JOIN Company C on C.company_id = B.company_id;
