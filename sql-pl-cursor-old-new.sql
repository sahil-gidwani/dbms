CREATE TABLE Cust_New
(
Name VARCHAR2(15)
);
 
INSERT INTO Cust_New VALUES ('ABC');
 
CREATE TABLE Cust_Old
(
Name VARCHAR2(15)
);
 
INSERT INTO Cust_Old VALUES ('ABC');
INSERT INTO Cust_Old VALUES ('PQR');
INSERT INTO Cust_Old VALUES ('XYZ');
 
-- <> operator means not equal to in MS SQL
DECLARE
 
CURSOR cur1 IS
SELECT Name from Cust_Old;
 
CURSOR cur2 IS
SELECT Name from Cust_New;
 
R VARCHAR(15);
C_Name VARCHAR(15);
 
BEGIN
OPEN cur1;
OPEN cur2;
 
LOOP
Fetch cur1 into C_Name;
Fetch cur2 into R;
IF R <> C_Name THEN
INSERT INTO Cust_New VALUES (C_Name); 
END IF;
EXIT WHEN cur1%FOUND = FALSE;
END LOOP;
CLOSE cur1;
CLOSE cur2;
END;
/
 
SELECT * FROM Cust_New;