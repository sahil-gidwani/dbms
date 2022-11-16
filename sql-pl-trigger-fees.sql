CREATE TABLE stud_fees_detail 
( 
 name VARCHAR2(30), 
 fees_deposited NUMBER(5), 
 till_date DATE 
); 

INSERT INTO stud_fees_detail VALUES('AAA',2000,'27-JUNE-19'); 
INSERT INTO stud_fees_detail VALUES('BBB',5000,'16-May-20'); 
INSERT INTO stud_fees_detail VALUES('CCC',1000,'01-August-19'); 
INSERT INTO stud_fees_detail VALUES('DDD',3000,'28-March-20'); 
INSERT INTO stud_fees_detail VALUES('EEE',2500,'12-November-20'); 

SELECT name, fees_deposited 
FROM stud_fees_detail 
WHERE name LIKE 'aj%';

CREATE TABLE backup_fees 
 ( 
 name VARCHAR2(30), 
 fees_deposited NUMBER(5), 
 till_date DATE 
);

CREATE OR REPLACE TRIGGER Stud_fees_AU 
AFTER UPDATE ON stud_fees_detail 
FOR EACH ROW 
ENABLE 
BEGIN 
 INSERT INTO backup_fees 
 (name, 
 fees_deposited, 
 till_date 
 ) 
 VALUES 
 ( :old.name, 
 :old.fees_deposited, 
 :old.till_date 
 ); 
END; 
/ 

UPDATE stud_fees_detail 
SET fees_deposited=7000 
WHERE name='CCC'; 
UPDATE stud_fees_detail 
SET fees_deposited=5555 
WHERE name='DDD';

SELECT * FROM backup_fees
