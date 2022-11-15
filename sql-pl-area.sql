CREATE TABLE AREAS
(
RADIUS NUMBER(5),
AREA NUMBER(14,2)
);
 
DECLARE
pi constant number(4,2):=3.14;
radius number(5);
area number(14,2);
 
BEGIN
radius :=4;
WHILE radius <=9
loop
area := pi*power(radius,2);
insert into areas values(radius,area);
radius := radius+1;
END loop;
END;
/

SELECT * FROM AREAS;
