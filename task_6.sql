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

INSERT INTO customer (customer_id , customer_name , email , address) 
VALUES (1 , 'Cole Baidoo' , 'cbaidoo@sandtech.com' , '123 Happiness Ave.') ,
		(2 , 'Blessing Malik' , 'bmalik@sandtech.com' , '124 Happiness  Ave.') ,
		(3 , 'Obed Ehoneah' , 'eobed@sandtech.com' , '125 Happiness  Ave.') ,
		(4 , 'Nehemial Kamolu' , 'nkamolu@sandtech.com' , '126 Happiness  Ave.') ; 
