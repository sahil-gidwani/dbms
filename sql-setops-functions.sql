CREATE TABLE tbl_employee(emp_id INT NOT NULL,emp_name VARCHAR(20),emp_salary INT, dateofjoin VARCHAR(20));

insert into tbl_employee values (101,'Manasi',90000,'03-jun-2022');
insert into tbl_employee values (102,'Manvika',75000,'08-jun-2022');
insert into tbl_employee values (103,'Mayuri',95000,'08-july-2022');
insert into tbl_employee values (104,'Sakshee',70000,'08-aug-2022');
insert into tbl_employee values (105,'Lavanya',62000,'08-aug-2022');
insert into tbl_employee values (106,'Kriti',50000,'08-sep-2022');

-- Fetch all the inserted data
select * from tbl_employee;
select emp_name,emp_salary from tbl_employee;
select emp_name,emp_salary from tbl_employee where emp_salary>80000;

-- Update the values from existing columnof table
update tbl_employee set emp_salary=75000 where lower(emp_name)='sakshee';
update tbl_employee set emp_name='Manasi W' where emp_id=101;
update tbl_employee set emp_name='Sakshee P' where emp_id=104;


--delete certain records from employee table
delete from tbl_employee where emp_salary<65000;
--delete all rows
delete from tbl_employee;

--drop table
--DROP TABLE tbl_employee;

--SET OPERATIONS
--creating another table to execute set operations | common raj and aryan
insert into tbl_employee values (201,'Raj',20443,'02-may-2021');
insert into tbl_employee values (207,'Aryan',65000,'09-jun-2020');

CREATE TABLE tbl_employee2(emp_id INT NOT NULL,emp_name VARCHAR(20),emp_salary INT, dateofjoin VARCHAR(20));

insert into tbl_employee2 values (201,'Raj',20443,'02-may-2021');
insert into tbl_employee2 values (103,'Maliha',51000,'05-jun-2022');
insert into tbl_employee2 values (104,'Tanveer',40000,'08-july-2023');
insert into tbl_employee2 values (205,'Sachin',12000,'08-aug-2021');
insert into tbl_employee2 values (406,'Lavya',9900,'08-aug-2022');
insert into tbl_employee2 values (207,'Aryan',65000,'09-jun-2020');

select * from tbl_employee;
select * from tbl_employee2;

--union (no dupicates)
SELECT * FROM tbl_employee UNION SELECT * FROM tbl_employee2;

--UNION ALL combines all the records from both the queries and duplicates won't be eliminated
SELECT * FROM tbl_employee UNION ALL SELECT * FROM tbl_employee2;

--Intersect(returns only records that are common)
SELECT * FROM tbl_employee INTERSECT SELECT * FROM tbl_employee2;

--MINUS (rows which are present in the first query but absent in the second query with no duplicates)
SELECT * FROM tbl_employee MINUS SELECT * FROM tbl_employee2;

--FUNCTIONS
SELECT COUNT(*) FROM tbl_employee;

SELECT COUNT(*) FROM tbl_employee
WHERE emp_salary>=90000;

SELECT MAX(emp_salary) from tbl_employee;
SELECT MIN(emp_salary) from tbl_employee;
SELECT MAX(emp_salary) max_salary,MIN(emp_salary) min_salary FROM tbl_employee;
