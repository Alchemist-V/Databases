show databases;

create database coffee_store;

use coffee_store;

show tables;



create table products (
	ID int auto_increment primary key,
    NAME varchar(30),
    DESCRIPTION varchar(100),
    PRICE decimal(3,2)
);

create table customers (
	ID int auto_increment primary key,
    FNAME varchar(50),
    LNAME varchar(50),
    GENDER enum('M','F','O'),
    PHONE_NUMBER varchar(15)
);

create table orders (
	ID int auto_increment primary key,
    CUSTOMER_ID int, 
    PRODUCT_ID int,
    ORDER_TIME datetime,
    foreign key (PRODUCT_ID) references products(ID),
    foreign key (CUSTOMER_ID) references customers(ID)
);



select * from products;
-- alter table
alter table products add column ORIGIN varchar(30);
commit;
alter table products drop column origin;


-- drop tables
drop tables table_name;