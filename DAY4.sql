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


-- PRIMARY KEY

CREATE TABLE pk_table(
empid INT PRIMARY KEY,
empname VARCHAR(100) NOT NULL,
age INT CHECK (age>20),
country VARCHAR(100) CHECK ( country IN ('India','England','USA'))
);

INSERT INTO pk_table VALUES(1000,'Durga Devi',27,'India');
SELECT * FROM pk_table;
INSERT INTO pk_table VALUES(1000,'Prabhakaran',30,'England');
INSERT INTO pk_table(empname, age, country) VALUES('Prabhakaran',30,'England');
INSERT INTO pk_table(empid,empname, age, country) VALUES(1001,'Prabhakaran',30,'England');


SELECT * FROM pk_table WHERE empid=1000;

CREATE TABLE pk_table2(
ID INT ,
empname VARCHAR(100) NOT NULL,
age INT CHECK (age>20),
country VARCHAR(100) CHECK ( country IN ('India','England','USA')),
CONSTRAINT pk_key PRIMARY KEY (ID,country)
);

INSERT INTO pk_table2 VALUES(1000,'Durga Devi',27,'India');
INSERT INTO pk_table2 VALUES(1001,'Durga Devi',27,'India');

INSERT INTO pk_table2 VALUES(1000,'Madhan Kumar',37,'USA');

SELECT * FROM pk_table2;


SELECT * FROM pk_table;

CREATE TABLE orders(
order_id INT PRIMARY KEY,
custid INT NOT NULL,
prod_name VARCHAR(100),
amount INT,
FOREIGN KEY (custid) REFERENCES pk_table(empid)
);

INSERT INTO orders VALUES(10000,1000,'HeadPhone',2000);
SELECT * FROM orders;
INSERT INTO orders VALUES(10001,1005,'Mobile',115000);
INSERT INTO orders VALUES(10001,1001,'Mobile',115000);


-- ........... GROUP BY , HAVING.. ORDER BY .......
CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
gender CHAR(1) ,
salary INT);

INSERT INTO employee(id, name, gender,salary) 
VALUES 
    (1, 'AXEL', 'M',30000),
    (2, 'Annie', 'F',40000),
    (3, 'Ace', 'M',50000),
    (4, 'Zelda', 'F',60000),
    (5, 'Diesel', 'M',20000),
    (6, 'Tilly', 'F',15000),
    (7, 'Leroy', 'M',20000),
    (8, 'Olivia', 'F',25000);
    
SELECT * FROM employee;

SELECT SUM(salary) FROM employee;

SELECT gender, SUM(SALARY) as total_sal,MIN(SALARY) as min_salary , max(salary) as max_salary 
FROM employee
GROUP BY gender
HAVING total_sal > 125000
ORDER BY total_sal desc;