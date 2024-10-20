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

order_id int PRIMARY KEY ,
customer_id VARCHAR(215) not null,
email VARCHAR(215) unique ,
address text 

);

CREATE TABLE Order_Details (

orderdetailid int PRIMARY KEY ,
order_id int not null,
book_id int not null ,
quantity DOUBLE

);
