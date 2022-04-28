DESCRIBE CUSTOMER;

-- CHANGES OM TABLE DEFINITIONS NEEDS TO BE DONE USING ALTER TABLE STATEMENT


SELECT * FROM CUSTOMER;

UPDATE CUSTOMER SET country='India';

UPDATE CUSTOMER SET country='USA' WHERE firstname='Satya';

UPDATE CUSTOMER SET country='CANADA' WHERE firstname IN ('Raghul','Prabha','Raj');

ALTER TABLE customer ADD column country varchar(20);

ALTER TABLE CUSTOMER DROP COLUMN contact;

ALTER TABLE CUSTOMER MODIFY COLUMN city varchar(100);

ALTER TABLE CUSTOMER RENAME column gender to sex;

RENAME TABLE CUSTOMER to CONSUMER;

RENAME TABLE CONSUMER to USERS;

/* TABLE CONSTRAINTS 
UNIQUE
NOT NULL
CHECK 
DEFAULT 
PRIMARY KEY
FOREIGN KEY or REFERENCE
*/
SELECT * FROM users;
SELECT DISTINCT *  FROM users;

-- UNIQUE CONSTRAINS

CREATE TABLE unique_tbl(
custid INT UNIQUE,
custname VARCHAR(50),
city VARCHAR(20)
);

-- DROP TABLE unique_tbl;

INSERT INTO unique_tbl VALUES(100,'Prakash Raj','Bangalore');

SELECT * FROM unique_tbl;

INSERT INTO unique_tbl VALUES(101,'Prakash Raj','Bangalore');

INSERT INTO unique_tbl(custid,custname,city) VALUES(101,'Vijay Kumar','Hyderabad');

DESCRIBE unique_tbl;

-- NOT NULL CONSTRAINTS

CREATE TABLE notnull_tbl(
custid INT NOT NULL,
custname VARCHAR(50),
city VARCHAR(20)
);

SELECT * FROM notnull_tbl;
INSERT INTO notnull_tbl VALUES(100,'Prakash Raj','Bangalore');

INSERT INTO notnull_tbl(custid) VALUES(103);

CREATE TABLE unique_notnull_tbl(
ID INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) NOT NULL
);

INSERT INTO unique_notnull_tbl VALUES(100,'Ankit Kumar','Kolkatta');

SELECT * FROM unique_notnull_tbl;

INSERT INTO unique_notnull_tbl VALUES(101,'Ankit Kumar','Kolkatta');
INSERT INTO unique_notnull_tbl(ID,custname) VALUES(102,'Apurba Majumdar');
INSERT INTO unique_notnull_tbl(ID,city) VALUES(102,'Mumbai');
INSERT INTO unique_notnull_tbl(ID,custname,city) VALUES(102,'Apurba Majumdar','Mumbai');


SELECT * FROM unique_tbl;
INSERT INTO unique_tbl VALUES(null,'Mahesh Babu','Hyderabad');
SELECT coalesce(custid,'Not Available') , custname, city FROM unique_tbl;

describe unique_tbl;

ALTER TABLE unique_tbl
MODIFY COLUMN city varchar(20) NOT NULL;