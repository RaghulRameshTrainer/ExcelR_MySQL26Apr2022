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