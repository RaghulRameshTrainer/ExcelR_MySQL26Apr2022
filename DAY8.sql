use report;

-- DDL DML DCL TCL

-- INDEX 

SELECT * FROM ORDER_TBL;

CREATE INDEX order_idx
ON order_tbl(orderid);

SELECT * FROM order_tbl WHERE orderid=5;

SELECT * FROM order_tbl WHERE orderid<=5;

CREATE INDEX order_ordcust
ON order_tbl(orderid,custid);

SELECT * FROM order_tbl WHERE orderid<=5 and custid=1000;

SHOW INDEX FROM order_tbl;

ALTER TABLE order_tbl
DROP INDEX order_ordcust;

SELECT custid,amount FROM order_tbl WHERE orderid IN (1,3,5,7,6,10);

SET GLOBAL secure_file_priv = "/tmp/";

SHOW VARIABLES LIKE 'secure_file_priv';

SELECT * INTO OUTFILE 'reports.csv'
FIELDS TERMINATED BY '|' LINES TERMINATED BY '\n'
FROM order_tbl;

select * from order_tbl into outfile 'output.txt';

-- CASE CHANGE FUNCTIONS
SELECT orderid,custid,UCASE(product_name),amount FROM order_tbl;

SELECT orderid,custid,LCASE(product_name),amount FROM order_tbl;

SELECT orderid,custid,UPPER(product_name),amount FROM order_tbl;

SELECT orderid,custid,LOWER(product_name),amount FROM order_tbl;

-- MID function: syntx => MID(column, start,length)
SELECT orderid,custid,UPPER(MID(product_name,1,3)) as prodname , amount from order_tbl;
SELECT orderid,custid,UPPER(MID(product_name,1,3)) as prodname , amount from order_tbl;

select * from order_tbl;

SELECT orderid,custid,UPPER(MID(product_name,3,3)) as prodname , amount from order_tbl;

SELECT orderid,custid,SUBSTR(product_name,3) as prodname , amount from order_tbl;

SELECT orderid,custid,SUBSTR(product_name,-5,3) as prodname , amount from order_tbl WHERE orderid=3;

SELECT orderid,custid,SUBSTR(product_name,3,3) as prodname , amount from order_tbl WHERE orderid=3;

CREATE TABLE get_name(
id INT PRIMARY KEY,
name VARCHAR(100)
);

INSERT INTO get_name VALUES(1,'Malini Ramesh'),(2,'Raghul Ramesh'),(3,'Ashwin Sekar');

SELECT * FROM get_name;

SELECT id, substring_index(name,' ',1) as firstname, 
substring_index(name,' ',-1) as lastname
FROM get_name;

-- LENGTH 

SELECT id, name , length(name) as len FROM get_name;

-- ROUND

SELECT ROUND(99.5) as amount ;
SELECT ROUND(99.4) as amount ;

SELECT ROUND(-99.5) as amount ;
SELECT ROUND(-99.4) as amount ;

SELECT ROUND(12345.654635) as amount ;
SELECT ROUND(12345.654635,3) as amount ;
SELECT ROUND(12345.654435,3) as amount ;

SELECT ROUND(12345.654635,-3) as amount ;
SELECT ROUND(12645.654635,-3) as amount ;

SELECT ROUND(12645.654635) as amount ;

-- CAST
select * from get_name;

SELECT CAST(id as CHAR) as ids , name from get_name;

SELECT orderid,custid, product_name,amount,CAST(amount AS DECIMAL(6,3)) as value FROM order_tbl ;

SELECT CAST('2022-05-06 08:52:11' as TIME) as tday;
SELECT CAST('2022-05-06 08:52:11' as DATE) as tday;

SELECT CAST('2022-05-06 08:52:11' as datetime) as tday;

SELECT cast(amount AS DECIMAL(7,1)) FROM order_info;