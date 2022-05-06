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