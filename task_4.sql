CREATE DATABASE IF NOT EXISTS alx_book_store ;

CREATE TABLE Books (

book_id int PRIMARY KEY ,
title VARCHAR(130) not null ,
author_id int not null ,
price double not null ,
publication_date DATE

);

CREATE TABLE Authors (

author_id int PRIMARY KEY ,
author_name VARCHAR(215) not null

);


CREATE TABLE Customers (

customer_id int PRIMARY KEY ,
customer_name VARCHAR(215) ,
email VARCHAR(215) ,
address TEXT 

);

CREATE TABLE Orders (

order_id INT PRIMARY KEY ,
customer_id INT ,
order_date DATE ,
FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)

);

CREATE TABLE Order_Details (

orderdetailid INT PRIMARY KEY ,
FOREIGN KEY (order_id) REFERENCES Orders(order_id) ,
book_id INT ,
FOREIGN KEY (book_id) REFERENCES Books(book_id) ,
quantity DOUBLE

);

USE alx_book_store;

SELECT 
    COLUMN_NAME AS 'Column',
    COLUMN_TYPE AS 'Type',
    IS_NULLABLE AS 'Null',
    COLUMN_KEY AS 'Key',
    COLUMN_DEFAULT AS 'Default',
    EXTRA AS 'Extra'
FROM 
    INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'Books'
    AND TABLE_SCHEMA = 'alx_book_store' ;
