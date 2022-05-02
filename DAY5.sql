create database report;
use report;

CREATE TABLE CUSTOMER(
custid INT PRIMARY KEY,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) DEFAULT 'Delhi'
);

INSERT INTO CUSTOMER 
VALUES(1000,'Rajesh','Chennai'),
(1001,'Aveek','Bangalore'),
(1002,'Venkatesh','Hyderabad'),
(1003,'Venkash','Pune');

SELECT * FROM CUSTOMER;

CREATE TABLE ORDER_TBL(
orderid INT PRIMARY KEY,
custid INT,
product_name VARCHAR(100) NOT NULL,
amount DECIMAL(12,2)
);

INSERT INTO ORDER_TBL
VALUES(1,1000,'Mobile',25000),
(2,1001,'Laptop',70000),
(3,1000,'Charger',1500),
(4,1001,'Tab',20000),
(5,1002,'Desktop',15000),
(6,1100,'Powebank',3000);

SELECT * FROM ORDER_TBL;

SELECT * FROM CUSTOMER INNER JOIN ORDER_TBL ON CUSTOMER.custid=ORDER_TBL.custid;

SELECT customer.custid,custname,city,product_name,amount 
FROM CUSTOMER INNER JOIN ORDER_TBL ON CUSTOMER.custid=ORDER_TBL.custid;

CREATE TABLE ORDER_TABLE(
orderid INT PRIMARY KEY,
custid INT,
prodid VARCHAR(100) NOT NULL,
amount DECIMAL(12,2)
);


INSERT INTO ORDER_TABLE
VALUES(1,1000,100,25000),
(2,1001,101,70000),
(3,1000,102,1500),
(4,1001,103,20000),
(5,1002,104,15000),
(6,1100,105,3000);

CREATE TABLE PRODUCT(
prodid INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(100)
);

INSERT INTO PRODUCT
VALUES(100,'Mobile','Electronics'),
(101,'Laptop','Electronics'),
(102,'Charger','Electronics'),
(103,'Tab','Electronics'),
(104,'Desktop','Electronics'),
(105,'Powerbank','Electronics'),
(106,'TV','Electronics'),
(107,'Fridge','Electric'),
(108,'WashingMachine','Electric'),
(109,'MicroOven','Electric');

SELECT * FROM PRODUCT;

SELECT c.custid,custname,city,product_name,amount
FROM CUSTOMER c  JOIN ORDER_TABLE o ON c.custid=o.custid
 JOIN PRODUCT p ON o.prodid=p.prodid; 

CREATE TABLE sample_tbl(
custid INT,
custname VARCHAR(100),
register_date timestamp,
updated_date date,
maint_date 	time
);

INSERT INTO sample_tbl VALUES(1000,'Rohit Sharma',current_timestamp(),current_date(),current_time());
INSERT INTO sample_tbl VALUES(1001,'Virat Kholi','2000-01-01 10:10:30','2020-12-01','23:59:59');

SELECT custname, DATE(register_date) FROM sample_tbl;
SELECT * FROM sample_tbl;

SELECT * FROM CUSTOMER LEFT OUTER JOIN ORDER_TBL ON CUSTOMER.custid = ORDER_TBL.custid;
SELECT * FROM CUSTOMER LEFT JOIN ORDER_TBL ON CUSTOMER.custid = ORDER_TBL.custid;


SELECT c.custid,c.custname,c.city,o.custid,o.product_name, o.amount FROM CUSTOMER c RIGHT JOIN ORDER_TBL o ON c.custid = o.custid;
SELECT c.custid,c.custname,c.city,o.custid,o.product_name, o.amount FROM  ORDER_TBL o LEFT JOIN CUSTOMER c ON c.custid = o.custid;
