use retail;

describe customer;

ALTER TABLE customer
ADD COLUMN pincode INT ,
ADD COLUMN active CHAR(1) AFTER age,
ADD COLUMN county VARCHAR(100)  AFTER city;

-- DEFAULT

CREATE TABLE default_const_tbl(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) DEFAULT 'Hyderabad'
);

INSERT INTO default_const_tbl VALUES(1000,'Balaji Baskar','Bangalore');

SELECT * FROM default_const_tbl;

INSERT INTO default_const_tbl(custid, custname) VALUES(1001,'Kishor Ramachandran');

-- CHECK 
CREATE TABLE check_const_tbl(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) DEFAULT 'Hyderabad',
age INT CHECK (age>=0 AND age<=100)
);


INSERT INTO  check_const_tbl VALUES(1000,'Parth Ram','Delhi',25);

SELECT * FROM check_const_tbl;

INSERT INTO  check_const_tbl VALUES(1001,'Abhishek Sharma','Pune',-25);
INSERT INTO  check_const_tbl VALUES(1001,'Abhishek Sharma','Pune',100);


CREATE TABLE check_const_tbl2(
custid INT UNIQUE NOT NULL,
custname VARCHAR(100) NOT NULL,
city VARCHAR(100) CHECK (city IN ('Hyderabad','Chennai','Bangalore','Cochin','Pune')),
age INT CHECK (age>=0 AND age<=100)
);

INSERT INTO check_const_tbl2 VALUES(1000,'Pankaj Sharma','Pune',27);

SELECT * FROM check_const_tbl2;
INSERT INTO check_const_tbl2 VALUES(1001,'Arun Kumar','Cochin',30);

