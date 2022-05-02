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