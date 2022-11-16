CREATE TABLE client_master
(
client_id NUMBER,
bal_due NUMBER
);

INSERT INTO client_master VALUES(101, 1000);
INSERT INTO client_master VALUES(102, 15000);
INSERT INTO client_master VALUES(103, -10);
INSERT INTO client_master VALUES(104, 25000);
INSERT INTO client_master VALUES(105, 3000);

DECLARE 
 temp_client_id NUMBER(5) := 103; 
 temp_balance NUMBER(10); 
 Insufficient_balance EXCEPTION; 
BEGIN 
 SELECT bal_due INTO temp_balance FROM client_master WHERE temp_client_id = client_id; 
 IF(temp_balance<0) THEN 
 RAISE Insufficient_balance; 
 END IF; 
 DBMS_OUTPUT.put_line('Success'); 
 
 EXCEPTION WHEN Insufficient_balance THEN 
 DBMS_OUTPUT.put_line('Business Rule Violated!!!'); 
END; 
/ 
