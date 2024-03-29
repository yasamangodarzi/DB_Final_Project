INSERT INTO Company (company_id, company_name, create_date_day, create_date_month, create_date_year, serial_number,
                     central_address_province, central_address_city, central_address_street)
VALUES (1, 'Nulla At Incorporated', '14', '07', '2023', 100000000000000000, 'Gyeonggi', 'El Quisco',
        '764-8370 Justo Road'),
       (2, 'Egestas Foundation', '28', '08', '2023', 100000000000000100, 'California', 'Purnea',
        '620-4916 Pellentesque. Ave'),
       (3, 'Nisi Cum Sociis Inc.', '23', '04', '2023', 100000004000000000, 'North Jeolla', 'Belfast',
        'P.O. Box 896, 3206 Lectus Rd.'),
       (4, 'Nec Urna Et Inc.', '06', '09', '2024', 100000000050000000, 'East Region', 'Tibet',
        'Ap #353-9467 Ornare. Avenue'),
       (5, 'Gravida Industries', '25', '03', '2024', 100000000060000000, 'Tuyên Quang', 'San Carlos',
        'P.O. Box 434, 9096 Egestas. Ave'),
       (6, 'Egestas Aliquam Corp.', '22', '08', '2022', 100070000000000000, 'łódzkie', 'Lambayeque',
        'Ap #406-3118 Sagittis Road'),
       (7, 'Ipsum Suspendisse Sagittis Ltd', '05', '01', '2022', 100080000000000000, 'Khyber Pakhtoonkhwa', 'Göteborg',
        'Ap #123-2697 A Ave'),
       (8, 'Quisque Fringilla Euismod PC', '15', '01', '2023', 100900000000000000, 'Leinster', 'Bismil',
        '722-505 Euismod Av.'),
       (9, 'Nec Enim Corp.', '06', '07', '2023', 100000000000009900, 'Dorset', 'Terneuzen', '4869 Ornare, St.');
INSERT INTO Brand (brand_id,company_id, brand_name, create_date_day, create_date_month, create_date_year)
VALUES (1,9, 'Eget Dictum Inc.', '10', '12', '2023'),
       (2,8,'Augue Sed Institute', '28', '08', '2024'),
       (3,7,'Adipiscing LLC', '13', '05', '2024'),
       (4,6,'Mauris LLP', '05', '05', '2024'),
       (5,5,'Morbi Accumsan Limited', '05', '05', '2023'),
       (6,4,'Nibh PC', '27', '01', '2024'),
       (7,3,'Donec Fringilla Limited', '31', '12', '2023'),
       (8,2,'Ante Iaculis Institute', '17', '09', '2022'),
       (9,1,'Neque Non Quam Institute', '18', '03', '2023'),
       (10,1, 'Nisl Elementum Industries', '02', '07', '2023');
INSERT INTO Product (product_id,brand_id, product_name, weight, barcode)
VALUES (1,1 ,'ice_cream', 10, 100000000000),
       (2, 10,'Milk', 7, 100000000001),
       (3, 2,'cheese', 3, 100000000002),
       (4, 9,'chocolate_cream', 9, 100000000003),
       (5, 3,'juice', 2, 100000000004),
       (6, 8,'salt', 8, 100000000005),
       (7, 4,'cafe', 5, 100000000006),
       (8, 7,'pepper', 0, 100000000007),
       (9, 5,'trousers', 6, 100000000008),
       (10,6, 'skirt', 7, 100000000009),
       (11,6, 'belt', 6, 100000000010),
       (12,5, 'baking_soda', 7, 100000000011),
       (13,7, 'glasses', 3, 100000000012),
       (14,4, 'phone', 8, 100000000013),
       (15,8, 'laptop', 3, 100000000014),
       (16,3, 'demonush', 7, 100000000015),
       (17,9, 'toothbrush', 3, 100000000016),
       (18,2, 'book', 5, 100000000017),
       (19,10, 'towel', 4, 100000000018),
       (20,1, 'pencil', 2, 100000000019);
INSERT INTO Customer (customer_id, first_name, last_name, national_id, address_city, address_street, phone,
                      address_province)
VALUES (1, 'Joseph', 'Huffman', 2099949263, 'Ribeirão das Neves', 'Ap #956-7177 Aliquet Rd.', '09027043530',
        'Valle del Cauca'),
       (2, 'Reece', 'Brewer', 1388956049, 'Edmundston', 'Ap #244-9976 Lacus. Ave', '09027043531', 'South Island'),
       (3, 'Emily', 'Bishop', 1183106330, 'Skien', 'P.O. Box 719, 3127 Metus St.', '09027043532', 'Northern Cape'),
       (4, 'Cally', 'Hull', 1247130144, 'Lelystad', '6885 Elit. Road', '09027043533', 'Ceará'),
       (5, 'Brynne', 'Phelps', 1200907728, 'Jundiaí', 'Ap #239-3086 A, St.', '09027043534', 'Ryazan Oblast'),
       (6, 'Christen', 'Butler', 1633539280, 'Ningxia', 'P.O. Box 224, 7322 Ante St.', '09027043535', 'Midi-Pyrénées'),
       (7, 'Felicia', 'Guy', 1728126612, 'Quy Nhơn', '614-3654 Aliquam Road', '09027043536', 'FATA'),
       (8, 'Lenore', 'Hall', 1956368315, 'Mala', 'P.O. Box 809, 1985 Mi, St.', '09027043537', 'Idaho'),
       (9, 'Brock', 'Sears', 1139639257, 'Bedok', 'Ap #389-6795 Proin Street', '09027043538', 'Ceuta'),
       (10, 'Oliver', 'Atkinson', 1111531624, 'Tulita', '1103 Id Rd.', '09027043539', 'Biobío');
INSERT INTO Types (type_id, type_name)
VALUES (1, 'Donec'),
       (2, 'ipsum'),
       (3, 'augue'),
       (4, 'maurisProin'),
       (5, 'dui'),
       (6, 'enim'),
       (7, 'egesta'),
       (8, 'ultric'),
       (9, 'egestat'),
       (10, 'metusum');
INSERT INTO Distributor (distributor_id, distributor_name, email, work_time, address_province, address_city,
                         address_street)
VALUES (1, 'Brenda', 'luctus.sit.amet@outlook.edu', '3', 'Distrito Capital', 'Cervino', '958-2782 Aliquam Rd.'),
       (2, 'Plato', 'sed.dolor@icloud.couk', '6', 'Guaviare', 'Szczecin', '884-5915 Dolor, St.'),
       (3, 'Sheila', 'nunc.sed@icloud.com', '8', 'Limburg', 'Lạng Sơn', 'Ap #900-2721 Sed Ave'),
       (4, 'Christian', 'luctus@protonmail.org', '1', 'Agder', 'Mariupol', '640-4345 Per Street'),
       (5, 'Aimee', 'mauris.ipsum@protonmail.ca', '8', 'Liguria', 'Łomża', '209-4387 Eu, Av.');
INSERT INTO Brand_Type_Product(brand_id, product_id, type_id)
VALUES (1, 1, 1),
       (2, 3, 1),
       (3, 5, 1),
       (4, 7, 2),
       (5, 9, 2),
       (5, 9, 1),
       (6, 11, 3),
       (7, 13, 3),
       (8, 15, 3),
       (9, 17, 6),
       (10, 19, 7),
       (10, 2, 4),
       (9, 4, 5),
       (8, 6, 5),
       (7, 8, 5),
       (6, 10, 8),
       (5, 12, 8),
       (4, 14, 9),
       (3, 16, 9),
       (2, 18, 10),
       (1, 20, 10),
       (1, 20, 9);
INSERT INTO Company_Distributor_Product (CDP_id, distributor_id, product_id, company_id, count, price)
VALUES (1, 1, 1, 9, 3, 220),
       (2, 2, 2, 1, 7, 380),
       (3, 3, 3, 8, 9, 900),
       (4, 4, 4, 1, 9, 610),
       (5, 5, 5, 7, 7, 100),
       (6, 1, 6, 2, 3, 220),
       (7, 2, 7, 6, 7, 380),
       (8, 3, 8, 3, 9, 900),
       (9, 4, 9, 5, 9, 610),
       (10, 5, 15, 2, 7, 100),
       (11, 1, 10, 4, 3, 220),
       (12, 2, 12, 5, 7, 380),
       (13, 3, 13, 3, 9, 900),
       (14, 4, 14, 6, 9, 610),
       (15, 5, 16, 7, 7, 100);
INSERT INTO _Order (order_id, customer_id, CDP_id, distributor_id,product_id,number_of_product,
                    order_date_day, order_date_year, order_date_month)
VALUES (27, 6, 6,1,6, 5, '07', '2024', '01'),
       (22, 11, 3,3,3, 5, '07', '2024', '01'),
       (20, 8, 10,5,15, 5, '07', '2024', '01'),
       (1, 9, 1,1,1, 3, '18', '2022', '07'),
       (2, 8, 7,2,7, 1, '12', '2023', '06'),
       (3, 7, 10,2,7, 6, '12', '2024', '05'),
       (4, 6, 14,4,14, 6, '06', '2023', '09'),
       (5, 5, 7,2,7, 2, '07', '2024', '01'),
       (6, 5, 10,5,15, 3, '18', '2022', '07'),
       (7, 1, 3,3,3, 1, '12', '2023', '06'),
       (8, 2, 3,3,3, 6, '12', '2024', '05'),
       (9, 6, 11,1,10, 1, '06', '2023', '09'),
       (10, 5, 15,5,16, 5, '07', '2024', '01');


