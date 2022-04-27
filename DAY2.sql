-- CREATE DATABASE IF NOT EXISTS retail; 
-- DROP DATABASE retail;

use retail;

/* DDL -> Data Definition Language (CREATE, ALTER)
   DML -> Data Manuplation Language (insert,update, delete, select)
   DCL -> Data Control Language ( GRANT, REVOKE)
   TCL -> Transaction Control Language (COMMIT, ROLLBACK, SAVEPOINT)
   */

/*
Datatypes:
==========
int ( shortint, tinyint,long)
char(1) 
varchar(50)
date
boolean
*/
use retail;

CREATE TABLE customer(
custid INT,
firstname VARCHAR(50),
lastname VARCHAR(50),
gender char(1),
age INT,
city VARCHAR(20),
contact VARCHAR(20) 
);


-- INSERT STATEMENT
INSERT INTO customer VALUES(1000,'Raghul','Ramesh','M',37,'Chennai','9898987490');
INSERT INTO customer VALUES(1001,'Levin','Lenus','M',40,'Chennai','9898987491'),(1002,'Venkatesh','Sambasivam','M',40,'Hyderabad','9898987492'),
(1003,'Aveek','Mishra','M',45,'Chennai','9898987493'),(1004,'Janaki','Raja','F',30,'Bangalore','9898987494'),
(1005,'Malini','Sekar','F',25,'Bangalore','9898987495');

INSERT INTO customer(custid,firstname,lastname,gender,city) VALUES(1006,'Sushma','Ankit','F','Pune');


-- SELECT STATEMENTS
SELECT * FROM customer;

SELECT * FROM customer WHERE age<40 or city='CHennai';


-- UPDATE STATEMENT

UPDATE customer SET custid=1007 WHERE custid=1006 AND firstname='Raghul';

SET sql_safe_updates=0;

UPDATE customer SET city='Mumbai' WHERE custid=1002;
UPDATE customer SET age=31,city='Hyderabad' WHERE custid=1004;

UPDATE CUSTOMER SET city='Delhi' WHERE custid IN (1001,1002,1003,1004,1005);

-- DELETE STATEMENT
DELETE FROM customer WHERE custid=1006;