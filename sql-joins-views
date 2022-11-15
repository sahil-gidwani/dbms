CREATE TABLE suppliers(
supplier_id INTEGER,supplier_name VARCHAR(20)
);
 
INSERT INTO suppliers VALUES(10000,'IBM');
INSERT INTO suppliers VALUES(10001,'Hewlett Packard');
INSERT INTO suppliers VALUES(10002,'Microsoft');
INSERT INTO suppliers VALUES(10003,'NVIDIA');
 
--DROP TABLE suppliers;
 
CREATE TABLE orders(
order_id INTEGER,supplier_id INTEGER,order_date DATE
);
 
INSERT INTO orders VALUES(500125,10000,DATE '2003-05-12');
INSERT INTO orders VALUES(500126,10001,DATE '2003-05-13');
INSERT INTO orders VALUES(500127,10004,DATE '2003-05-14');
 
--DROP TABLE orders;
--NATURAL Join  is an SQL join operation that creates join on the base of the common columns in the tables.
SELECT * FROM suppliers NATURAL JOIN orders;
 
--INNER JOIN(SIMPLE JOIN)  return all rows from the suppliers and orders tables where there is a matching supplier_id value in both the suppliers and orders tables.
SELECT suppliers.supplier_id,suppliers.supplier_name,orders.order_date
FROM suppliers
INNER JOIN orders
ON suppliers.supplier_id=orders.supplier_id;
 
--OUTER join LEFT,RIGHT AND FULL
 
--LEFT OUTER JOIN
SELECT suppliers.supplier_id,suppliers.supplier_name,orders.order_date
FROM suppliers
LEFT JOIN orders
on suppliers.supplier_id=orders.supplier_id;
 
--RIGHT OUTER JOIN
SELECT suppliers.supplier_id,suppliers.supplier_name,orders.order_date
FROM suppliers
RIGHT JOIN orders
on suppliers.supplier_id=orders.supplier_id;
 
--FULL OUTER JOIN
SELECT suppliers.supplier_id,suppliers.supplier_name,orders.order_date
FROM suppliers
FULL JOIN orders
on suppliers.supplier_id=orders.supplier_id;
 
INSERT INTO orders VALUES(620025,20002,DATE '2003-02-10');
INSERT INTO orders VALUES(900250,20004,DATE '2003-04-20');
INSERT INTO orders VALUES(740204,30002,DATE '2003-08-19');
 
 
--Subqueries with the SELECT Statement
SELECT *
    FROM orders
	WHERE supplier_id IN (SELECT supplier_id
    	FROM orders
    	WHERE order_id>600000);
    	
--Subqueries with the INSERT Statement tables are of simmilar structure, this COPIES the complete table into another
CREATE TABLE orders2(
order_id INTEGER,supplier_id INTEGER,order_date DATE
);
 
INSERT INTO orders2
	SELECT * FROM orders
	WHERE order_id IN (SELECT order_id
    	FROM orders);
    	
--Subqueries with the UPDATE Statement
UPDATE orders2
	SET order_id=order_id-100000
	WHERE order_id IN (SELECT order_id
    	FROM orders2 WHERE order_id>600000);
    	
SELECT * FROM orders2;
 
--Subqueries with the DELETE Statement
DELETE FROM orders2
	WHERE order_id IN (SELECT order_id
    	FROM orders2 WHERE order_id>600000);
    	
--VIEW
CREATE VIEW sup_order AS
SELECT suppliers.supplier_id,suppliers.supplier_name,orders.order_date
FROM suppliers
INNER JOIN orders
ON suppliers.supplier_id=orders.supplier_id;
 
--check view
SELECT * FROM sup_order;
 
--update
CREATE OR REPLACE VIEW sup_order AS
SELECT suppliers.supplier_id,suppliers.supplier_name,orders.order_date
FROM suppliers
INNER JOIN orders
ON suppliers.supplier_id=orders.supplier_id
WHERE suppliers.supplier_id=10000;
 
SELECT * FROM sup_order;
 
--drop view
DROP VIEW sup_order;
