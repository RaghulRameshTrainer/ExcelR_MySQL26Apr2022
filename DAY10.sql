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

DECLARE 
    c_name customers.name%type; 
    CURSOR c_customers IS 
        SELECT NAME FROM CUSTOMERS WHERE SALARY > (SELECT MIN(SALARY) FROM CUSTOMERS); 
BEGIN 
    OPEN c_customers; 
        LOOP 
            FETCH c_customers INTO c_name; 
            EXIT WHEN c_customers%NOTFOUND; 
            dbms_output.put_line(c_name); 
        END LOOP; 
    CLOSE c_customers; 
END; 
/

SELECT * FROM CUSTOMERS;

DECLARE 
    c_name customers.name%type; 
    CURSOR c_customers IS 
        SELECT NAME FROM CUSTOMERS WHERE SALARY != (SELECT MIN(SALARY) FROM CUSTOMERS); 
BEGIN 
    OPEN c_customers; 
        LOOP 
            FETCH c_customers INTO c_name; 
            EXIT WHEN c_customers%NOTFOUND; 
            dbms_output.put_line(c_name); 
        END LOOP; 
    CLOSE c_customers; 
END; 
/

DECLARE 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name, city , salary INTO c_name, c_city , c_salary 
    FROM customers WHERE ID=5; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
END; 
/

DECLARE 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name, city , salary INTO c_name, c_city , c_salary 
    FROM customers; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
END; 
/

DECLARE 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
     CURSOR cust_info IS 
     SELECT name, city , salary INTO c_name, c_city , c_salary 
     FROM customers; 
BEGIN 
    OPEN cust_info; 
    LOOP 
    FETCH cust_info INTO c_name,c_city,c_salary; 
    EXIT WHEN cust_info%notfound; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
    END LOOP; 
    CLOSE cust_info; 
END; 
/

DECLARE 
     c_cid customer.id%type := 10; 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE ID = c_id; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
 
END; 
/

DECLARE 
     c_id customer.id%type := 10; 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE ID = c_id; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
 
END; 
/

DECLARE 
     c_id customers.id%type := 10; 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE ID = c_id; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
 
END; 
/

DECLARE 
     c_id customers.id%type := 10; 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE ID = c_id; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    EXCEPTION 
        WHEN no_data_found THEN 
            dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
        WHEN others THEN 
            dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

DECLARE 
     c_id customers.id%type := 10; 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE ID = c_id; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    -- EXCEPTION 
    --     WHEN no_data_found THEN 
    --         dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
    --     WHEN others THEN 
    --         dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

DECLARE 
     c_id customers.id%type := 10; 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE ID = c_id; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    EXCEPTION 
        WHEN no_data_found THEN 
            dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
        WHEN others THEN 
            dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

DECLARE 
     c_id customers.id%type := 8; 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE ID = c_id; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    EXCEPTION 
        WHEN no_data_found THEN 
            dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
        WHEN TOO_MANY_ROWS THEN 
            dbms_output.put_line('Too many rows returned for the same ID :8. Kindly check'); 
        WHEN others THEN 
            dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

DECLARE 
     c_id customers.id%type := 8; 
     c_name customers.name%type; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE ID = c_id; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    EXCEPTION 
        WHEN no_data_found THEN 
            dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
        WHEN TOO_MANY_ROWS THEN 
            dbms_output.put_line('Too many rows returned for the same ID :8. Kindly check'); 
        WHEN others THEN 
            dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

INSERT INTO CUSTOMERS VALUES(5,'Kholi',34,'Bangalore',150000);

INSERT INTO CUSTOMERS VALUES(6,'Kholi',34,'Bangalore',150000);

DECLARE 
     c_name customers.name%type := 'Kholi'; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE name = c_c_name; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    EXCEPTION 
        WHEN no_data_found THEN 
            dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
        WHEN TOO_MANY_ROWS THEN 
            dbms_output.put_line('Too many rows returned for the same name :Kholi. Kindly check'); 
        WHEN others THEN 
            dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

DECLARE 
     c_name customers.name%type := 'Kholi'; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE name = c_name; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    EXCEPTION 
        WHEN no_data_found THEN 
            dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
        WHEN TOO_MANY_ROWS THEN 
            dbms_output.put_line('Too many rows returned for the same name :Kholi. Kindly check'); 
        WHEN others THEN 
            dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

DECLARE 
     c_name customers.name%type := 'Kholi'; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE name = c_name; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    -- EXCEPTION 
    --     WHEN no_data_found THEN 
    --         dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
    --     WHEN TOO_MANY_ROWS THEN 
    --         dbms_output.put_line('Too many rows returned for the same name :Kholi. Kindly check'); 
    --     WHEN others THEN 
    --         dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

DECLARE 
     c_name customers.name%type := 'Kholi'; 
     c_city customers.city%type; 
     c_salary customers.salary%type; 
BEGIN 
    SELECT name,city,salary INTO c_name, c_city, c_salary 
    FROM CUSTOMERS 
    WHERE name = c_name; 
    dbms_output.put_line(c_name ||' is from '||c_city||' and he earns: '|| c_salary); 
     
    EXCEPTION 
        WHEN no_data_found THEN 
            dbms_output.put_line('No data found for customer id : 8. Please check the customers table for the given ID existence'); 
        WHEN TOO_MANY_ROWS THEN 
            dbms_output.put_line('Too many rows returned for the same name :Kholi. Kindly check'); 
        WHEN others THEN 
            dbms_output.put_line('There is an error when reading the data from customers table. Please check the query and table used'); 
END; 
/

CREATE TABLE OLD_CUSTOMERS( 
ID INT PRIMARY KEY, 
NAME VARCHAR2(100) NOT NULL, 
AGE INT NOT NULL, 
CITY VARCHAR2(30), 
SALARY DECIMAL(30,2) 
);

CREATE OR REPLACE TRIGGER cust_data_deletion 
BEFORE DELETE ON CUSTOMERS 
FOR EACH ROW 
DECLARE 
BEGIN  
 INSERT INTO OLD_CUSTOMERS VALUES(:OLD.id, :OLD.name, :OLD.age, :OLD.city , :OLD.salary); 
END; 
/

SELECT * FROM OLD_CUSTOMERS;

SELECT * FROM CUSTOMERS;

DELETE FROM CUSTOMERS WHERE ID=2;

SELECT * FROM CUSTOMERS;

SELECT * FROM  OLD_CUSTOMERS 
;

DELETE FROM CUSTOMERS WHERE name='Kholi';

SELECT * FROM CUSTOMERS;

SELECT * FROM  OLD_CUSTOMERS 
;

CREATE OR REPLACE TRIGGER instead_data_deletion 
INSTEAD DELETE ON CUSTOMERS 
FOR EACH ROW 
DECLARE 
BEGIN  
 INSERT INTO OLD_CUSTOMERS VALUES(:OLD.id, :OLD.name, :OLD.age, :OLD.city , :OLD.salary); 
END; 
/

CREATE OR REPLACE TRIGGER instead_data_deletion 
INSTEAD OF DELETE ON CUSTOMERS 
FOR EACH ROW 
DECLARE 
BEGIN  
 INSERT INTO OLD_CUSTOMERS VALUES(:OLD.id, :OLD.name, :OLD.age, :OLD.city , :OLD.salary); 
END; 
/

CREATE OR REPLACE TRIGGER instead_data_deletion 
INSTEAD OF INSERT ON CUSTOMERS 
FOR EACH ROW 
DECLARE 
BEGIN  
 INSERT INTO OLD_CUSTOMERS VALUES(:OLD.id, :OLD.name, :OLD.age, :OLD.city , :OLD.salary); 
END; 
/

