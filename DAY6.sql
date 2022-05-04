-- RECAP OF JOINS
/*
	INNER JOIN
	OUTER JOIN
		LEFT JOIN
        RIGHT JOIN
        CROSS JOIN
*/
USE REPORT;
SELECT * FROM CUSTOMER;
SELECT * FROM ORDER_TBL;

SELECT order_tbl.custid,customer.custname,customer.city,SUM(amount) as total_amount, count(*) as no_of_orders, avg(amount) as avg_amount_spent, min(amount) as minimum_trans_amt,
MAX(amount) as maximum_trans_amt
FROM order_tbl LEFT JOIN customer ON order_tbl.custid=customer.custid
WHERE custname in ('Venkatesh','Aveek')
GROUP BY custid;

-- CROSS JOIN -> m*n . Each rows from the left table gets matched with each rows in right table
SELECT * FROM CUSTOMER CROSS JOIN ORDER_TBL
WHERE CUSTOMER.custid <1002;

select * from order_tbl where amount between 25000 and 100000;
select * from order_tbl where amount > 25000 and amount< 100000;

-- Self join

SELECT * FROM CUSTOMER;
INSERT INTO CUSTOMER VALUES(1004,'Ranga','Chennai'),(1005,'Raj V','Hyderabad'),(1006,'Raj S','Bangalore');
INSERT INTO CUSTOMER VALUES(1007,'Kishor','Chennai');

SELECT c1.custname as CustomerName1, c2.custname as CustomerName2 , c1.city
FROM CUSTOMER c1, CUSTOMER c2
WHERE c1.custid <> c2.custid
AND c1.city=c2.city;

-- FULL OUTER JOIN

SELECT * FROM CUSTOMER c LEFT JOIN ORDER_TBL o ON c.custid=o.custid
UNION ALL
SELECT * FROM CUSTOMER c RIGHT JOIN ORDER_TBL o ON c.custid=o.custid;

-- CTAS

CREATE TABLE CUST_CHENAI AS
SELECT * FROM CUSTOMER 
WHERE city='CHENNAI';

CREATE TABLE CUST_BANG AS
SELECT * FROM CUSTOMER 
WHERE city='BANGALORE';

SELECT * FROM CUST_BANG;

-- INSERT INTO cust_info(CustomerName, Loction)
-- SELECT custname,city from CUSTOMER;

-- SEQUENCE (AUTO_INCREMENT)

CREATE TABLE employee(
empid INT PRIMARY KEY  AUTO_INCREMENT,
empName varchar(100),
city varchar(30));

INSERT INTO employee(empName,city) VALUES('Raghul Ramesh','Chennai'),('Apurba Majumdar','Pune'),('Ankit Kumar','Kolkatta');

SELECT * FROM employee;
INSERT INTO employee(empName,city) VALUES('Malini Ramesh','Chennai'),('Ashwin Sekar','Pune'),('Tharani Siva','Kolkatta');

/*
SEQUENCE IN OTHER DATABASE (POSTGRESQL):
========================================
CREATE SEQUENCE empid_seq
START 1
INCREMENT 2
MAXVALUE 999999
MINVALUE 1;

SELECT nextval('empid_seq');

CREATE TABLE employee(
empid INT PRIMARY KEY ,
empName varchar(100),
city varchar(30));

INSERT INTO employee(empid,empName,city) VALUES(nextval('empid_seq'),'Raghul Ramesh','Chennai'),
(nextval('empid_seq'),'Apurba Majumdar','Pune'),(nextval('empid_seq'),'Ankit Kumar','Kolkatta');

SELECT * FROM employee;

*/









