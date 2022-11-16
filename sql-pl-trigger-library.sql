CREATE TABLE Library
(
Book_Id NUMBER(5),
Book_Name VARCHAR2(20),
Book_Type VARCHAR2(20),
Issued_By VARCHAR2(20)
);

INSERT INTO Library VALUES (1234,'DBMS','Reference','Sudarshan');
INSERT INTO Library VALUES (1836,'TOC','Text','Siddham');
INSERT INTO Library VALUES (1996,'SPOS','Reference','Shreyas');
INSERT INTO Library VALUES (1196,'CNS','Text','Sairaj');

CREATE TABLE Back_UP
(
Book_Id NUMBER(5),
Book_Name VARCHAR2(20),
Book_Type VARCHAR2(20),
Issued_By VARCHAR2(20)
);

CREATE TRIGGER Update_Rec
AFTER UPDATE OR DELETE ON Library
FOR EACH ROW

BEGIN
INSERT INTO Back_UP
(Book_Id, Book_Name, Book_Type, Issued_By)
VALUES
(:old.Book_Id, :old.Book_Name, :old.Book_Type, :old.Issued_By);
END;
/

UPDATE LIBRARY
SET Issued_By = 'Sumit'
WHERE Issued_By = 'Sairaj';

SELECT * FROM Back_UP;
