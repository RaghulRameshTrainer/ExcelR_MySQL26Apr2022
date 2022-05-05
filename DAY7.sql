use report;

SELECT * FROM order_tbl;

INSERT INTO order_tbl(orderid,custid,product_name) VALUES(7,1002,'TV'),(8,1001,'WristWatch');

SELECT orderid,custid,product_name,IFNULL(amount,0) FROM order_tbl;

SELECT orderid,custid,product_name,COALESCE(amount,0) FROM order_tbl;

SELECT orderid,custid,product_name,(COALESCE(amount,0) *2) as double_amount FROM order_tbl;


/*

%a Abbreviated weekdays name (Sun, Mon, Tue)
%b Abbreviated month name (Jan,Feb...Dec)
%c Month in numeric(1...12)
$d day of the month (00...31)
%M Month name (January...December)
%W Weekday name (Sunday...Saturday)
%Y year in 4 digit
%y year in 2 digit
%H Hours (00..23)
%h hours(00..12)
%p AM|PM
%I Minute
%S ->Seconds
%T -> hh:mm:ss

*/

CREATE TABLE order_info(
orderid INT primary key,
productname VARCHAR(100) NOT NULL,
amount INT,
orderdate date
);

INSERT INTO order_info VALUES(1,'Camera',50000,current_date()),(2,'headphone',2000,'2022-05-05');

SELECT * FROM order_info;

SELECT orderid,productname,amount,YEAR(orderdate) FROM order_info;
SELECT orderid,productname,amount,MONTH(orderdate) FROM order_info;
SELECT orderid,productname,amount,DAY(orderdate) FROM order_info;
SELECT orderid,productname,amount,dayname(orderdate) FROM order_info;
SELECT orderid,productname,amount,monthname(orderdate) FROM order_info;
SELECT orderid,productname,amount,week(orderdate) FROM order_info;

SELECT orderid,productname,amount,orderdate FROM order_info;
SELECT orderid,productname,amount,date_format(orderdate,'%d/%m/%Y') FROM order_info;


SELECT orderid,productname,amount,date_format(orderdate,'%W %D %M %y %T') FROM order_info;