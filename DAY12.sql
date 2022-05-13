CREATE TABLE CUSTOMERS(   
ID INT PRIMARY KEY,   
NAME VARCHAR2(100) NOT NULL,   
AGE INT NOT NULL,   
CITY VARCHAR2(30),   
SALARY DECIMAL(30,2)   
);

INSERT INTO CUSTOMERS VALUES(1,'Raghul',37,'Chennai',100000);

INSERT INTO CUSTOMERS VALUES(2,'Parth',27,'Delhi',75000);

INSERT INTO CUSTOMERS VALUES(3,'Pankaj',25,'Pune',125000);

INSERT INTO CUSTOMERS VALUES(4,'Dhoni',39,'Ranchi',200000);

INSERT INTO CUSTOMERS VALUES(5,'Kholi',34,'Bangalore',150000);

SELECT * FROM CUSTOMERS;

CREATE OR REPLACE FUNCTION get_total_no_of_customers 
RETURN number IS 
    total number; 
BEGIN 
   SELECT COUNT(*) INTO total 
   FROM CUSTOMERS; 
    
   RETURN total; 
END; 
/

DECLARE 
    c number; 
BEGIN 
  c := get_total_no_of_customers(); 
  dbms_output.put_line('Total no of registered customers : '|| c); 
END; 
/

CREATE OR REPLACE FUNCTION get_total_no_of_customers 
RETURN number IS 
    total number; 
BEGIN 
   SELECT COUNT(*) INTO total 
   FROM CUSTOMERS; 
    
   RETURN total; 
END; 
/

DECLARE 
    c number; 
BEGIN 
  c := get_total_no_of_customers(); 
  dbms_output.put_line('Total no of registered customers : '|| c); 
END; 
/

DECLARE 
    a number; 
    b number; 
    c number; 
FUNCTION findMax(x IN number, y IN number) 
RETURN number 
IS 
        z number; 
BEGIN 
    IF x > y THEN 
        z := x; 
    ELSE 
        z := y 
    END IF; 
     
    RETURN z; 
END; 
/

DECLARE 
    a number; 
    b number; 
    c number; 
FUNCTION findMax(x IN number, y IN number) 
RETURN number 
IS 
        z number; 
BEGIN 
    IF x > y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
     
    RETURN z; 
END; 
/

DECLARE 
    a number; 
    b number; 
    c number; 
FUNCTION findMax(x IN number, y IN number) 
RETURN number 
IS 
        z number; 
BEGIN 
    IF x > y THEN 
        z := x; 
    ELSE 
        z := y; 
    END IF; 
     
    RETURN z; 
END; 
 
BEGIN 
    a := 65; 
    b := 38; 
    c := findMax(a,b); 
    dbms_output.put_line('Maximum of (65,38) is :' || c); 
END; 
/

SELECT * FROM CUSTOMERS;

DECLARE 
    a number; 
    c number; 
FUNCTION Sal(x IN number) 
RETURN number 
IS 
        z number; 
BEGIN 
    select salary into z from customers where Id = x; 
     
    RETURN z; 
END; 
 
BEGIN 
    a := 4; 
    c := sal(a); 
    dbms_output.put_line('Salary is :' || c); 
END; 
/

DECLARE 
    a number; 
    c varchar2(100); 
FUNCTION Sal(x IN number) 
RETURN varchar2 
IS 
        z varchar2(100); 
BEGIN 
    select salary into z from customers where Id = x; 
     
    RETURN z; 
END; 
 
BEGIN 
    a := 4; 
    c := sal(a); 
    dbms_output.put_line('Name of the customer is :' || c); 
END; 
/

DECLARE 
    a number; 
    c varchar2(100); 
FUNCTION Sal(x IN number) 
RETURN varchar2 
IS 
        z varchar2(100); 
BEGIN 
    select name into z from customers where Id = x; 
     
    RETURN z; 
END; 
 
BEGIN 
    a := 4; 
    c := sal(a); 
    dbms_output.put_line('Name of the customer is :' || c); 
END; 
/

select cancat(id,'-',name,'-',age,'-',city,'-',salary) FROM CUSTOMERS WHERE ID=4;

select cancat_ws('-',id,name,age,city,salary) FROM CUSTOMERS WHERE ID=4;

select concat_ws('-',id,name,age,city,salary) FROM CUSTOMERS WHERE ID=4;

select  concat(id,'-',name,'-',age,'-',city,'-',salary) FROM CUSTOMERS WHERE ID=4;

select  concat(id,'-',name) FROM CUSTOMERS WHERE ID=4;

select  concat(city,'-',name) FROM CUSTOMERS WHERE ID=4;

select  concat(city,name) FROM CUSTOMERS WHERE ID=4;

select  concat(city,' ',name) FROM CUSTOMERS WHERE ID=4;

select  concat(concat(city,' '),name)) FROM CUSTOMERS WHERE ID=4;

select  concat(concat(city,' '),name) FROM CUSTOMERS WHERE ID=4;

select  concat(concat(city,' - '),name) FROM CUSTOMERS WHERE ID=4;

select  concat(concat(concat(concat(city,' - '),name),' -') , salary ) FROM CUSTOMERS WHERE ID=4;

select  concat(concat(concat(concat(concat(concat(city,' - '),name),' - ') , salary ),' - ') , city) FROM CUSTOMERS WHERE ID=4;

DECLARE 
    a number; 
    c varchar2(100); 
FUNCTION Sal(x IN number) 
RETURN varchar2 
IS 
        z varchar2(100); 
BEGIN 
    select  concat(concat(concat(concat(concat(concat(city,' - '),name),' - ') , salary ),' - ') , city) into z FROM CUSTOMERS where Id = x; 
     
    RETURN z; 
END; 
 
BEGIN 
    a := 4; 
    c := sal(a); 
    dbms_output.put_line('Name of the customer is :' || c); 
END; 
/

DECLARE 
    a number; 
    c varchar2(100); 
FUNCTION Sal(x IN number) 
RETURN varchar2 
IS 
        z varchar2(100); 
BEGIN 
    select  concat(concat(concat(concat(concat(concat(city,' - '),name),' - ') , salary ),' - ') , age) into z FROM CUSTOMERS where Id = x; 
     
    RETURN z; 
END; 
 
BEGIN 
    a := 4; 
    c := sal(a); 
    dbms_output.put_line('Name of the customer is :' || c); 
END; 
/

SELECT CONCAT_WS('-', 'SQL', ' is', ' fun!');

SELECT CONCAT_WS('-', name, city, age, salary) FROM CUSTOMERS WHERE ID=1;

DECLARE 
    a number; 
    res varchar2(100); 
PROCEDURE Sal(x IN number, res OUT VARCHAR2(100) ) 
IS 
BEGIN 
    select  concat(concat(concat(concat(concat(concat(city,' - '),name),' - ') , salary ),' - ') , age) into res FROM CUSTOMERS where Id = x; 
END; 
 
BEGIN 
    a := 4; 
    sal(a,res); 
    dbms_output.put_line('Name of the customer is :' || res); 
END; 
/

DECLARE 
    a number; 
    res varchar2(100); 
PROCEDURE Sal(x IN number, res OUT VARCHAR2 ) 
IS 
BEGIN 
    select  concat(concat(concat(concat(concat(concat(city,' - '),name),' - ') , salary ),' - ') , age) into res FROM CUSTOMERS where Id = x; 
END; 
 
BEGIN 
    a := 4; 
    sal(a,res); 
    dbms_output.put_line('Name of the customer is :' || res); 
END; 
/

DECLARE 
    a number; 
    c number; 
FUNCTION Sal(x IN number) 
RETURN number 
IS 
        z number; 
BEGIN 
    select salary into z from customers where Id = x; 
     
    RETURN z; 
END; 
 
BEGIN 
    SELECT name, Sal(id) FROM CUSTOMERS; 
END; 
/

DECLARE 
    a number; 
    c number; 
FUNCTION Sal(x IN number) 
RETURN number 
IS 
        z number; 
BEGIN 
    select salary into z from customers where Id = x; 
     
    RETURN z; 
END; 
 
BEGIN 
    SELECT name, Sal(ID) FROM CUSTOMERS; 
END; 
/

CREATE OR REPLACE FUNCTION get_sal(x IN number) 
RETURN number IS 
    s number; 
BEGIN 
    SELECT salary INTO s FROM CUSTOMERS WHERE ID = x; 
    return s; 
END; 
/

SELECT get_sal(ID) FROM customers;

CREATE OR REPLACE FUNCTION get_sal(x IN number) 
RETURN number IS 
    s number; 
BEGIN 
    SELECT salary*2 INTO s FROM CUSTOMERS WHERE ID = x; 
    return s; 
END; 
/

SELECT get_sal(ID) FROM customers;

CREATE TABLE EMPLOYEE( 
empid INTEGER, 
name VARCHAR2(100), 
city VARCHAR2(100), 
salary INTEGER 
);

INSERT INTO EMPLOYEE VALUES(1,'Ramesh','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(1,'Ramesh','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(2,'Raghul','Chennai',100000);

INSERT INTO EMPLOYEE VALUES(3,'Ashwin','Chennai',200000);

INSERT INTO EMPLOYEE VALUES(4,'Malini','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(5,'Tharani','Chennai',300000);

INSERT INTO EMPLOYEE VALUES(6,'Ramu','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(7,'Shivani','Bangalore',100000);

INSERT INTO EMPLOYEE VALUES(8,'Harsha','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(9,'Arun','Bangalore',150000);

INSERT INTO EMPLOYEE VALUES(10,'Raja','Bangalore',120000);

INSERT INTO EMPLOYEE VALUES(11,'Ranjita','Bangalore',130000);

INSERT INTO EMPLOYEE VALUES(12,'Mani','Bangalore',200000);

SELECT * FROM EMPLOYEE;

SELECT MAX(SALARY) FROM EMPLOYEE;

SELECT NAME FROM EMPLOYEE  
WHERE SALARY=( 
SELECT MAX(SALARY) FROM EMPLOYEE);

SELECT * FROM EMPLOYEE;

SELECT CITY,NAME FROM EMPLOYEE  
WHERE SALARY=( 
SELECT MAX(SALARY) FROM EMPLOYEE) 
GROUP BY CITY;

SELECT CITY,NAME FROM EMPLOYEE  
WHERE SALARY=(SELECT MAX(SALARY) FROM EMPLOYEE) 
GROUP BY CITY,NAME;

SELECT * FROM EMPLOYEE;

SELECT EMPID, NAME, CITY, SAKARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) "Rank" 
FORM EMPLOYEE;

SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) "Rank" 
FROM EMPLOYEE;

SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) "Rank" 
FROM EMPLOYEE 
WHERE Rank=1;

SELECT EMPID, NAME, CITY, SALARY,Rank( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) "Rank" 
FROM EMPLOYEE) cust 
WHERE Rank=1;

SELECT EMPID, NAME, CITY, SALARY,Rank( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) Rank 
FROM EMPLOYEE) cust 
WHERE Rank=1;

SELECT EMPID, NAME, CITY, SALARY,Rank( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) 'Rank' 
FROM EMPLOYEE) cust;

SELECT EMPID, NAME, CITY, SALARY,Rank( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) "Rank" 
FROM EMPLOYEE) cust;

SELECT EMPID, NAME, CITY, SALARY,Rank( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) cust;

SELECT EMPID, NAME, CITY, SALARY,Rank( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) ;

SELECT EMPID, NAME, CITY, SALARY,Rank( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE) ;

SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE;

SELECT EMPID, NAME, CITY, SALARY,Rank( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE) ;

SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE;

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE);

SELECT NAME, CITY, SALARY, Rank FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE);

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE) cust;

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE) cust 
WHERE cust.Rank=1;

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE 
WHERE Rank=1) ;

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE 
WHERE Rank=1) c;

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC)  "Rank" 
FROM EMPLOYEE 
WHERE Rank=1) c;

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) Rank 
FROM EMPLOYEE 
WHERE Rank=1) ;

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE 
WHERE Rank=1) ;

SELECT NAME, CITY, SALARY FROM 
( 
SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS rn 
FROM EMPLOYEE 
WHERE rn=1) ;

SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS rn 
FROM EMPLOYEE;

SELECT NAME,CITY, rn FROM 
(SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS rn 
FROM EMPLOYEE) WHERE rn=1;

SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE);

SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY,rn FROM 
(SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) WHERE Rank=1;

SELECT EMPID,NAME,CITY, SALARY,Rank FROM 
(SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) WHERE Rank=1;

SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY,Rank FROM 
(SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) WHERE Rank<=3;

SELECT EMPID, NAME, CITY, SALARY, 
RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY,Rank FROM 
(SELECT EMPID, NAME, CITY, SALARY, 
ROW_NUMBER() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) WHERE Rank=1;

SELECT EMPID,NAME,CITY, SALARY,Rank FROM 
(SELECT EMPID, NAME, CITY, SALARY, 
RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) WHERE Rank=1;

SELECT EMPID, NAME, CITY, SALARY, 
RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE;

SELECT EMPID, NAME, CITY, SALARY, 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE;

SELECT EMPID,NAME,CITY, SALARY,Rank FROM 
(SELECT EMPID, NAME, CITY, SALARY, 
DENSE_RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) WHERE Rank<=3;

SELECT EMPID,NAME,CITY, SALARY,Rank FROM 
(SELECT EMPID, NAME, CITY, SALARY, 
RANK() OVER (PARTITION BY CITY ORDER BY SALARY DESC) AS Rank 
FROM EMPLOYEE) WHERE Rank<=3;

