CREATE TABLE stud_marks
(
name VARCHAR2(25),
total_marks NUMBER
);
 
CREATE TABLE result
(
roll_number NUMBER ,
name VARCHAR2(25),
class VARCHAR2(30)
);
 
CREATE OR REPLACE PROCEDURE procedure_1
( roll_no IN NUMBER, name IN VARCHAR2 ,marks IN NUMBER)
AS
BEGIN
            	IF (marks<=1500 and marks>=990) THEN
                            	DBMS_OUTPUT.PUT_LINE (roll_no||' - '||name||' : DISTINCTION');
                            	INSERT INTO result VALUES (roll_no,name,'DISTINCTION');
            	ELSIF (marks<=989 and marks>=900) THEN
                            	DBMS_OUTPUT.PUT_LINE (roll_no||' - '||name||' : FIRST CLASS');
                            	INSERT INTO result VALUES (roll_no,name,'FIRST CLASS');
            	ELSIF (marks<=899 and marks>825) THEN
                            	DBMS_OUTPUT.PUT_LINE(roll_no||' - '||name||' : HIGHER SECOND CLASS');
                            	INSERT INTO result VALUES (roll_no,name,'HIGHER SECOND CLASS');
            	ELSE
                            	DBMS_OUTPUT.PUT_LINE (roll_no||' - '||name||' : FAIL');
                            	INSERT INTO result VALUES (roll_no,name,'FAIL');
            	END IF;
            	INSERT INTO stud_marks VALUES (name,marks);
END procedure_1;
/
 
BEGIN
                                            	procedure_1(54,'SUDARSHAN',1000);
                                            	procedure_1(46,'ARYAN	',950);
                                            	procedure_1(58,'ARJUN	',1050);
                                            	procedure_1(48,'SARTHAK  ',750);
END;
/
