CREATE TABLE Company(
    company_id INT NOT NULL UNIQUE ,
    company_name VARCHAR(100),
    create_date_day INT,
    create_date_year INT,
    create_date_month INT,
    serial_number VARCHAR(100) NOT NULL UNIQUE,
    central_address_province VARCHAR(100),
    central_address_city VARCHAR(100),
    central_address_street VARCHAR(100),
    PRIMARY KEY (company_id)
);
CREATE TABLE Brand(
    brand_id INT NOT NULL UNIQUE,
    company_id INT NOT NULL ,
    brand_name VARCHAR(100) NOT NULL UNIQUE,
    create_date_day INT,
    create_date_year INT,
    create_date_month INT,
    PRIMARY KEY (brand_id),
    FOREIGN KEY (company_id) REFERENCES Company(company_id)

);
CREATE TABLE Product(
    product_id INT NOT NULL UNIQUE,
    brand_id INT,
    product_name VARCHAR(100),
    weight INT,
    barcode VARCHAR(12) NOT NULL UNIQUE,
    PRIMARY KEY (product_id),
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);
CREATE TABLE Customer(
    customer_id INT NOT NULL UNIQUE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    national_id VARCHAR(15) NOT NULL UNIQUE ,
    address_province VARCHAR(100),
    address_city VARCHAR(100),
    address_street VARCHAR(100),
    phone VARCHAR(12),
    PRIMARY KEY (customer_id)
);
CREATE TABLE Types(
    type_id INT NOT NULL UNIQUE ,
    type_name VARCHAR(100) NOT NULL UNIQUE ,
    PRIMARY KEY (type_id)
);
CREATE TABLE Distributor(
    distributor_id INT NOT NULL UNIQUE,
    distributor_name VARCHAR(100),
    email VARCHAR(100),
    work_time INT,
    address_province VARCHAR(100),
    address_city VARCHAR(100),
    address_street VARCHAR(100),
    PRIMARY KEY (distributor_id)
);
CREATE TABLE Brand_Type_Product(
    brand_id INT NOT NULL ,
    type_id INT NOT NULL,
    product_id INT NOT NULL ,
    PRIMARY KEY (brand_id ,product_id, type_id),
    FOREIGN KEY (type_id) REFERENCES Types(type_id),
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
CREATE TABLE Company_Distributor_Product(
    CDP_id INT NOT NULL UNIQUE ,
    distributor_id INT NOT NULL,
    product_id INT NOT NULL ,
    company_id INT NOT NULL ,
    count INT,
    price INT,
    PRIMARY KEY (CDP_id),
     FOREIGN KEY (company_id) REFERENCES Company(company_id),
    FOREIGN KEY (distributor_id) REFERENCES Distributor(distributor_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)

);
CREATE TABLE _Order(
    order_id INT NOT NULL UNIQUE ,
    customer_id INT NOT NULL ,
    CDP_id INT NOT NULL,
    distributor_id INT NOT NULL,
    product_id INT NOT NULL ,
    number_of_product INT,
    order_date_day INT,
    order_date_year INT,
    order_date_month INT,
    PRIMARY KEY (order_id),
    FOREIGN KEY (distributor_id) REFERENCES Distributor(distributor_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (CDP_id) REFERENCES Company_Distributor_Product(CDP_id)

);
