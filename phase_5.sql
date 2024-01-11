SELECT _Order.distributor_id, _Order.product_id, SUM(number_of_product*price) AS total_sold
FROM _Order
JOIN Company_Distributor_Product ON _Order.CDP_id = Company_Distributor_Product.CDP_id
GROUP BY distributor_id, product_id
ORDER BY distributor_id, total_sold DESC
LIMIT 10;


DROP PROCEDURE IF EXISTS best_distributor_seller;
CREATE PROCEDURE best_distributor_seller()
BEGIN
declare i int default 0;
declare n int default 0;
drop table if exists final_answer;
drop table if exists best_seller;
create table final_answer(distributor_id int,product_id int);
create table best_seller (distributor_id int, product_id int, total_sold int);
insert into best_seller(distributor_id, product_id, total_sold)
(SELECT _Order.distributor_id, _Order.product_id, SUM(number_of_product*price) AS total_sold
FROM _Order
JOIN Company_Distributor_Product ON _Order.CDP_id = Company_Distributor_Product.CDP_id
GROUP BY distributor_id, product_id
ORDER BY distributor_id, total_sold DESC);
select count(*) from (select distinct distributor_id from _Order) as t into n;
set i=0;
while i<n do
    insert into final_answer(distributor_id,product_id)
    select distributor_id,product_id
    from best_seller
    where best_seller.distributor_id=(select distributor_id from Distributor limit i,1)
    order by best_seller.total_sold desc
    limit 1;
    set i=i+1;
end while;
end;;
call best_distributor_seller();
############################################
DROP PROCEDURE IF EXISTS best_city_seller;
CREATE PROCEDURE best_city_seller()
BEGIN
declare i int default 0;
declare n int default 0;
drop table if exists final_ans;
drop table if exists best_city;
create table final_ans(address_city VARCHAR(100),product_id int);
create table best_city (address_city VARCHAR(100), product_id int, total_sold int);
insert into best_city(address_city, product_id, total_sold)
(SELECT distinct address_city, _Order.product_id, SUM(number_of_product * price) AS total_sold
FROM _Order
JOIN Company_Distributor_Product ON _Order.CDP_id = Company_Distributor_Product.CDP_id
JOIN Distributor ON Company_Distributor_Product.distributor_id = Distributor.distributor_id
GROUP BY address_city, product_id
ORDER BY total_sold DESC);
select count(*) from (select  address_city from Distributor) as t into n;
set i=0;
while i<n do
    insert into final_ans(address_city,product_id)
    select address_city,product_id
    from best_seller2
    where best_seller2.address_city=(select address_city from Distributor limit i,1)
    order by best_seller2.total_sold desc
    limit 1;
    set i=i+1;
end while;
end;;
call best_city_seller();

##################################################
SELECT address_city, _Order.product_id, SUM(number_of_product * price) AS total_sold
FROM _Order
JOIN Company_Distributor_Product ON _Order.CDP_id = Company_Distributor_Product.CDP_id
JOIN Distributor ON Company_Distributor_Product.distributor_id = Distributor.distributor_id
GROUP BY address_city, product_id
ORDER BY total_sold DESC
LIMIT 10;
############################################
SELECT _Order.distributor_id, SUM(number_of_product*price) AS total_sold
FROM _Order
JOIN Company_Distributor_Product ON _Order.CDP_id = Company_Distributor_Product.CDP_id
WHERE order_date_year = 2024
GROUP BY distributor_id
ORDER BY total_sold DESC
LIMIT 5;
############################################
SELECT DISTINCT o2.product_id , count(*) as total
FROM _Order o1
JOIN _Order o2 ON o1.customer_id = o2.customer_id
WHERE o1.product_id = 7
group by o2.product_id
ORDER BY total DESC
limit 3;
############################################
SELECT d1.distributor_id
FROM _Order d1
JOIN _Order d2 ON d1.distributor_id = d2.distributor_id
WHERE d1.product_id = 6 AND d2.product_id = 1 and d1.number_of_product > d2.number_of_product
GROUP BY d1.distributor_id;
