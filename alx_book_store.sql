CREATE DATABASE IF NOT EXISTS alx_book_store ;

CREATE TABLE Books (

book_id int primary key ,
title varchar(130) not null ,
author_id int not null ,
price double not null ,
publication_date DATE

);

CREATE TABLE Authors (

author_id int primary key ,
author_name varchar(215) not null

);


CREATE TABLE Customers (

customer_id int primary key ,
customer_name varchar(215) not null,
email varchar(215) unique,
address text 

);

CREATE TABLE Orders (

order_id int primary key ,
customer_id varchar(215) not null,
email varchar(215) unique ,
address text 

);

CREATE TABLE Order_Details (

orderdetailid int primary key ,
order_id int not null,
book_id int not null ,
quantity DOUBLE

);
