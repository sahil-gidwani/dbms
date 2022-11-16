CREATE TABLE bank_account
(
account_no NUMBER,
balance NUMBER
);

INSERT INTO bank_account VALUES(101, 5000);
INSERT INTO bank_account VALUES(102, 15000);
INSERT INTO bank_account VALUES(103, 2000);
INSERT INTO bank_account VALUES(104, 25000);
INSERT INTO bank_account VALUES(105, 3000);

DECLARE 
 temp_account_no NUMBER(5); 
 temp_balance NUMBER(10); 
 withdraw_amount NUMBER(10) := 0; 
 Insufficient_balance EXCEPTION; 
BEGIN 
 
 temp_account_no := 101; 
 withdraw_amount := 6000; 
 SELECT balance INTO temp_balance FROM bank_account WHERE account_no = 
temp_account_no; 
 DBMS_OUTPUT.put_line('Account No = ' || temp_account_no||' Balanace = '|| temp_balance); 
 IF(temp_balance< withdraw_amount) THEN 
 RAISE Insufficient_balance; 
 END IF; 
 temp_balance := temp_balance - withdraw_amount; 
 DBMS_OUTPUT.put_line('Current Balance is: '|| temp_balance); 
 
 EXCEPTION WHEN Insufficient_balance THEN 
 DBMS_OUTPUT.put_line('Insufficient Balance!!!'); 
END; 
/
